library IEEE;
use IEEE.std_logic_1164.all;

--entity
entity mycircuit is
  port(a1,a2,b1,b2,d1 : in std_logic;
       eOut           : out std_logic);
end mycircuit;

--architecture
architecture mycircuit_arc of mycircuit is
  signal aOut, bOut, cOut : std_logic;
begin
  aOut <= a1 and a2;
  bOut <= b1 or b2;
  cOut <= (not d1) and b2;
  eOut <= aOut or bOut or cOut;
end mycircuit_arc;
