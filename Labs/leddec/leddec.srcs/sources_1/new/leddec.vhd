----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/23/2021 02:10:30 PM
-- Design Name: 
-- Module Name: leddec - Behavioral
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

entity leddec is
	PORT (
		dig : IN STD_LOGIC_VECTOR (1 DOWNTO 0);
		data : IN STD_LOGIC_VECTOR (3 DOWNTO 0);
		anode : OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
		seg : OUT STD_LOGIC_VECTOR (6 DOWNTO 0)
	);
end leddec;

architecture Behavioral of leddec is
begin
seg <= "0000001" WHEN data = "0000" ELSE --0
	       --"1001111" --(number 1)
	       "0011000"WHEN data = "0001" ELSE --(letter P)
	       --"0010010" number 2
	       "0001100" WHEN data = "0010" ELSE  --letter q (it doesnt look that good)
	       --"0000110" number 3
	       "1000001" WHEN data = "0011" ELSE --letter "U"
	       --"1001100" number 4
	       "1001000" WHEN data = "0100" ELSE --letter "H"
	       --"0100100"  number 5
	       "0110110" WHEN data = "0101" ELSE --greek capital letter "Xi"
	       --"0100000" number 6 
	       "0111001" WHEN data = "0110" ELSE --greek capital letter gamma
	       --"0001111" number 7
	       "0001001" WHEN data = "0111" ELSE --greek letter capital pi
	       "0000000" WHEN data = "1000" ELSE --8
	       "0000100" WHEN data = "1001" ELSE --9
	       "0001000" WHEN data = "1010" ELSE --A
	       "1100000" WHEN data = "1011" ELSE --B
	       "0110001" WHEN data = "1100" ELSE --C
	       "1000010" WHEN data = "1101" ELSE --D
	       "0110000" WHEN data = "1110" ELSE --E
	       "0111000" WHEN data = "1111" ELSE --F
	       "1111111";
	-- Turn on anode of 7-segment display addressed by 2-bit digit selector dig
	anode <= "1110" WHEN dig = "00" ELSE --0 --Anode ) (U13?)
	         "1101" WHEN dig = "01" ELSE --1
	         "1011" WHEN dig = "10" ELSE --2
	         "0111" WHEN dig = "11" ELSE --3
	         "1111";
end Behavioral;
