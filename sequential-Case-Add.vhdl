library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;

entity adder is
    port (
        a, b, cin : in  std_logic;
        s, cout   : out std_logic
    );
end adder;

signal vstup : std_logic_vector(2 downto 0);
begin
    vstup <= cin & b & a;

    process(vstup)
    begin
        case vstup is
            when "000"  => cout <= '0'; s <= '0';
            when "001"  => cout <= '0'; s <= '1';
            when "010"  => cout <= '0'; s <= '1';
            when "011"  => cout <= '1'; s <= '0';
            when "100"  => cout <= '0'; s <= '1';
            when "101"  => cout <= '1'; s <= '0';
            when "110"  => cout <= '1'; s <= '0';
            when "111"  => cout <= '1'; s <= '1';
            when others => cout <= 'X'; s <= 'X';
        end case;
    end process;
