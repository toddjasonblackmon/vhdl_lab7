----------------------------------------------------------------------------------
--
-- Author: Todd Blackmon
--
-- Description:
-- Testbench module for lab7
--
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use std.textio.all;
use ieee.std_logic_textio.all;
use work.all;
entity lab7_tb is
end lab7_tb;

architecture testbench of lab7_tb is

    signal clk : std_logic;
    signal rst : std_logic;
    signal freq_sel, vol_sel : std_logic_vector (2 downto 0);
    signal audio_en_b, aud_sd : std_logic;
    signal seg7_an : std_logic_vector (7 downto 0);
    signal seg7_cath : std_logic_vector (7 downto 0);
    signal aud_pwm : std_logic;
    signal phase_inc : std_logic;
    signal dc_override : std_logic;
    signal phase : unsigned (7 downto 0);
    
    signal sim_run : std_logic := '1';
begin

    process
    begin
        clk <= '1';
        wait for 5 ns;
        clk <= '0';
        wait for 5 ns;
        
        if (sim_run = '0') then
            wait;
        end if;
        
    end process;

    process
        file data_fp : text open read_mode is "lab7.dat";
        variable sample : line;
        variable t : time;
        variable rst_var : std_logic;
        variable out_valid : std_logic;
        variable freq_sel_var, vol_sel_var : std_logic_vector (2 downto 0);
        variable phase_inc_var : std_logic;
        variable dc_override_var : std_logic;
        variable phase_var : integer;
    begin
        while not endfile (data_fp) loop
            readline (data_fp, sample);
            read (sample, t);
            read (sample, rst_var);
            read (sample, freq_sel_var);
            read (sample, vol_sel_var);
            read (sample, out_valid);
            if (out_valid = '1') then
                read (sample, phase_inc_var);
                read (sample, dc_override_var);
                read (sample, phase_var);
--                hread (sample, dout_var);
            end if;
            
            wait for t;
            
            -- Drive inputs
            rst <= rst_var;
            freq_sel <= freq_sel_var;
            vol_sel <= vol_sel_var;
--            rwb <= rwb_var;
--            addr <= addr_var;
--            din <= din_var;
            
            if (out_valid = '1') then   
                assert phase_inc = phase_inc_var report "phase_inc does not match" severity Error;
                assert dc_override = dc_override_var report "dc_override does not match" severity Error;
                assert phase = phase_var report "phase does not match" severity Error;
--                assert dout = dout_var report "dout does not match" severity Error;
            end if;
        end loop;
        sim_run <= '0';
        report "Simulation successful"; 
        wait;
   end process;
    
    CUT: entity lab7_top port map (
        CLK100MHZ => clk,
        RST_PIN => rst,
        FREQ_SEL => freq_sel,
        VOL_SEL => vol_sel, 
        AUDIO_EN_B => audio_en_b,
        AUD_SD => aud_sd,
        SEG7_AN => seg7_an,
        SEG7_CATH => seg7_cath,
        AUD_PWM => aud_pwm,
        dc_override_t => dc_override,
        phase_inc_t => phase_inc,
        phase_t => phase
        );

end testbench;
