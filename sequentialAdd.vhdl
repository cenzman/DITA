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
        if vstup = "000" then
            cout <= '0'; s <= '0';
        elsif vstup = "001" then
            cout <= '0'; s <= '1';
        elsif vstup = "010" then
            cout <= '0'; s <= '1';
        elsif vstup = "011" then
            cout <= '1'; s <= '0';
        elsif vstup = "100" then
            cout <= '0'; s <= '1';
        elsif vstup = "101" then
            cout <= '1'; s <= '0';
        elsif vstup = "110" then
            cout <= '1'; s <= '0';
        elsif vstup = "111" then
            cout <= '1'; s <= '1';
        else
            cout <= 'X'; s <= 'X';
        end if;
    end process;
