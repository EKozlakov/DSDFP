library ieee;
use ieee.std_logic_1164.all;
--ill be making a half adder from a youtube tutorial

entity ha is --ha stands for "half adder"
  port
    (
     a: in  std_ulogic;
     b: in  std_ulogic;
     o: out std_ulogic;
     c: out std_ulogic
     );
end ha;

architecture behave of ha is
begin
  o <= a xor b;
  c <= a and b;
end behave;
