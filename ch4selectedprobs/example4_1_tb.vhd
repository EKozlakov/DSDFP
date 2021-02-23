library IEEE;
use IEEE.std_logic_1164.all;

entity example4_1_tb is
end example4_1_tb;

architecture test of  example4_1_tb is
  component example4_1
      port(a1,a2,b1,b2,d1 : in  std_ulogic;
           eOut           : out std_ulogic);
  end component;

  signal a1,a2,b1,b2,d1,eOut : std_ulogic;
begin
  ex : example4_1 port map
    (a1 => a1,
     a2 => a2,
     b1 => b1,
     b2 => b2,
     d1 => d1,
     eOut => eOut);
  
  process begin
            a1 <= '0';
            a2 <= '0';
            b1 <= '0';
            b2 <= '0';
            d1 <= '1'; --wrote 1 to counter the "not" command in example architecture
            wait for 1 ns;

            a1 <= '0';
            a2 <= '0';
            b1 <= '0';
            b2 <= '1';
            d1 <= '0'; --output should be 1
            wait for 1 ns;

            a1 <= '1';
            a2 <= '1';
            b1 <= '0';
            b2 <= '0';
            d1 <= '0'; -- output should be 1
            wait for 1 ns;

            assert false report "reached end of test";
            wait;
          end process;
end test;
