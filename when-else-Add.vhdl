library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;

entity adder is
    port (
        a, b, cin : in  std_logic;
        s, cout   : out std_logic
    );
end adder;

signal vstup  : std_logic_vector(2 downto 0);
signal vystup : std_logic_vector(1 downto 0);
begin
    vstup <= cin & b & a;

    vystup <= "00" when vstup = "000" else
              "01" when vstup = "001" else
              "01" when vstup = "010" else
              "10" when vstup = "011" else
              "01" when vstup = "100" else
              "10" when vstup = "101" else
              "10" when vstup = "110" else
              "11" when vstup = "111" else
              "XX";

    cout <= vystup(1);
    s    <= vystup(0);
