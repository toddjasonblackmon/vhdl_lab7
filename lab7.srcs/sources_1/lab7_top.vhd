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
use work.utility.all;
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
           AUD_PWM : out STD_LOGIC);
end lab7_top;

architecture Behavioral of lab7_top is
    signal clk : std_logic;
    signal rst : std_logic;
    signal rst_s1 : std_logic;
    signal seg7_disp_value : std_logic_vector (31 downto 0);
    signal seg7_digit_en : std_logic_vector (7 downto 0);
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
        clk => CLK100MHZ,
        rst => rst,
        display_value => seg7_disp_value, 
        digit_enable => seg7_digit_en,
        an => SEG7_AN,
        cath => SEG7_CATH
    );

    AUD_SD <= AUDIO_EN_B;

end Behavioral;


