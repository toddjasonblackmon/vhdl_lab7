
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity pwm_generator is
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           duty_cycle : in STD_LOGIC_VECTOR (9 downto 0);
           pwm_out : out STD_LOGIC);
end pwm_generator;

architecture Behavioral of pwm_generator is
    signal thresh : unsigned (9 downto 0);
    signal cnt : unsigned (9 downto 0);
begin

    process (clk, rst)
    begin
        if rst = '1' then
            cnt <= (others => '0');
            pwm_out <= '0';
            thresh <= (others => '0');
        elsif rising_edge(clk) then
            -- Always increment the count
            cnt <= cnt + 1;
        
            -- On rollover, capture the duty cycle
            if (cnt + 1) = 0 then
                thresh <= unsigned(duty_cycle);
            end if; 
        
            -- Create the actual output
            if cnt >= thresh then
                pwm_out <= '0';
            else
                pwm_out <= '1';
            end if;
        end if;
    end process;

end Behavioral;
