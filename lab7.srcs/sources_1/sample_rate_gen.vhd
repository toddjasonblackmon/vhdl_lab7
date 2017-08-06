----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/05/2017 04:11:45 PM
-- Design Name: 
-- Module Name: sample_rate_gen - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity sample_rate_gen is
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           freq_sel : in STD_LOGIC_VECTOR (2 downto 0);
           dc_override : out STD_LOGIC;
           phase_inc : out STD_LOGIC);
end sample_rate_gen;

architecture Behavioral of sample_rate_gen is
    signal cnt : unsigned (9 downto 0);
    signal freq_limit : integer;    -- Number of counts per phase increment.
begin
    dc_override <= '1' when freq_sel = "000" else '0';

    with freq_sel select
        freq_limit <=
            781 when "001", -- 500 Hz
            391 when "010", -- 1000 Hz
            260 when "011", -- 1500 Hz
            195 when "100", -- 2000 Hz
            156 when "101", -- 2500 Hz
            130 when "110", -- 3000 Hz
            112 when "111", -- 3500 Hz
            781 when others; -- DC doesn't really matter
    
    process (clk, rst)
    begin
        if rst = '1' then
            cnt <= (others => '0');
            phase_inc <= '0';
        elsif rising_edge(clk) then
            phase_inc <= '0';
            
            if cnt >= (freq_limit - 1) then
                cnt <= (others => '0');
                phase_inc <= '1';
            else
                cnt <= cnt + 1;
            end if;
        end if;
    end process;

end Behavioral;
