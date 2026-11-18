library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;

entity adder is
    port (
        a, b, cin : in  std_logic;
        s, cout   : out std_logic
    );
end adder;


begin
    s    <= a xor b xor cin;
    cout <= (a and b) or (cin and (a xor b));
