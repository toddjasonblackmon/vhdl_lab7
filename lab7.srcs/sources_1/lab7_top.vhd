----------------------------------------------------------------------------------
--
-- Author: Todd Blackmon
--
-- Description:
-- Lab 7 top level creates an audio output based on switch inputs.
--
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.all;
                      

entity lab7_top is
    Port ( CLK100MHZ : in STD_LOGIC;
           RST_PIN : in STD_LOGIC;
           FREQ_SEL : in STD_LOGIC_VECTOR (2 downto 0);
           VOL_SEL : in STD_LOGIC_VECTOR (2 downto 0);
           AUDIO_EN_B : in STD_LOGIC;
           AUD_SD: out STD_LOGIC;
           SEG7_AN : out STD_LOGIC_VECTOR (7 downto 0);
           SEG7_CATH : out STD_LOGIC_VECTOR (7 downto 0);
           AUD_PWM : out STD_LOGIC
           );
end lab7_top;

architecture Behavioral of lab7_top is
    signal clk : std_logic;
    signal rst : std_logic;
    signal rst_s1 : std_logic;
    signal seg7_disp_value : std_logic_vector (31 downto 0);
    signal seg7_digit_en : std_logic_vector (7 downto 0);
    signal phase : unsigned (7 downto 0);
    signal dc_override, phase_inc : std_logic;
    signal audio_fs : std_logic_vector (15 downto 0);
    signal audio_scaled : signed (15 downto 0);
    signal volume_shift : unsigned (2 downto 0);
    signal duty_cycle : std_logic_vector (9 downto 0);
begin
    -- Internal signal rename
    clk <= CLK100MHZ;

    -- Async enable reset, synchronous disable
    -- Purpose is to ensure that all flops come out 
    -- of reset on same clock.
    process (clk, RST_PIN)
    begin
        if RST_PIN = '1' then
            rst_s1 <= '1';
            rst <= '1';
        elsif rising_edge(clk) then
            rst_s1 <= '0';
            rst <= rst_s1;
        end if;
    end process; 

    -- sample_rate_generator
    sr_gen : entity sample_rate_gen port map (
        clk => clk,
        rst => rst,
        freq_sel => FREQ_SEL,
        dc_override => dc_override,
        phase_inc => phase_inc
    );
    
    -- phase accumulator
    process (clk, rst)
    begin
        if rst = '1' then
            phase <= (others => '0');
        elsif rising_edge(clk) then
            if dc_override = '1' then
                phase <= (others => '0');
            elsif phase_inc = '1' then
                phase <= phase + 1;
            end if;
        end if;
    end process;
    
    -- Sine LUT
    lut : entity sine_lut port map (
        aclk => clk,
        s_axis_phase_tvalid => '1',
        s_axis_phase_tdata => std_logic_vector (phase),
        m_axis_data_tdata => audio_fs
      );
    
    -- Volume level shifter
    volume_shift <= unsigned (not VOL_SEL);
    audio_scaled <= shift_right (signed(audio_fs), to_integer(volume_shift));
    -- Reduce to 10 bits and convert to unsigned
    duty_cycle <= std_logic_vector(audio_scaled(15 downto 6)) xor "1000000000" when dc_override = '0'
                  else "0000000000";
    
    -- PWM Generator
    pwm_gen : entity pwm_generator port map (
        clk => clk,
        rst => rst,
        duty_cycle => duty_cycle,
        pwm_out => AUD_PWM     
    );

    -- Display encoding
    -- Volume display (upper 4 digits)
    seg7_digit_en(7 downto 4) <= "0001";    -- Disable upper bits.
    seg7_disp_value (31 downto 16) <= X"000" & '0' & VOL_SEL;

    -- Frequency display (lower 4 digits)
    with FREQ_SEL select
        seg7_digit_en (3 downto 0) <= 
            "0001" when "000",         -- "___0"
            "0111" when "001",         -- "_500"
            "1111" when others;        -- "1500"

    seg7_disp_value(15 downto 12) <= "00" & FREQ_SEL(2 downto 1);
    seg7_disp_value(11 downto 8) <= "0101" when FREQ_SEL(0) = '1'   -- Odd are multiples of 500 Hz
                               else "0000";
    seg7_disp_value(7 downto 0) <= X"00";

    -- The 7 segment controller displays the cursor position
    s7_ctrl : entity seg7_controller port map (
        clk => clk,
        rst => rst,
        display_value => seg7_disp_value, 
        digit_enable => seg7_digit_en,
        an => SEG7_AN,
        cath => SEG7_CATH
    );

    AUD_SD <= AUDIO_EN_B;

end Behavioral;


