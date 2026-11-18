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
signal vystup : std_logic_vector(1 downto 0); -- vystup(1) = cout, vystup(0) = s
begin
    vstup <= cin & b & a;

    with vstup select
        vystup <= "00" when "000",
                  "01" when "001",
                  "01" when "010",
                  "10" when "011",
                  "01" when "100",
                  "10" when "101",
                  "10" when "110",
                  "11" when "111",
                  "XX" when others;

    cout <= vystup(1);
    s    <= vystup(0);
