----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/24/2021 06:28:41 PM
-- Design Name: 
-- Module Name: hexcounter - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity hexcounter is
	PORT (
		clk_50MHz : IN STD_LOGIC;
		anode : OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
		seg : OUT STD_LOGIC_VECTOR (6 DOWNTO 0)
	);
end hexcounter;

architecture Behavioral of hexcounter is
	COMPONENT counter IS
		PORT (
			clk : IN STD_LOGIC;
			count : OUT STD_LOGIC_VECTOR (3 DOWNTO 0)
		);
	END COMPONENT;
	COMPONENT leddec IS
		PORT (
			dig : IN STD_LOGIC_VECTOR (1 DOWNTO 0);
			data : IN STD_LOGIC_VECTOR (3 DOWNTO 0);
			anode : OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
			seg : OUT STD_LOGIC_VECTOR (6 DOWNTO 0)
		);
	END COMPONENT;
	SIGNAL S : STD_LOGIC_VECTOR (3 DOWNTO 0);
BEGIN
	C1 : counter
	PORT MAP(clk => clk_50MHz, count => S);
	L1 : leddec
	PORT MAP(dig => "00", data => S, anode => anode, seg => seg);
end Behavioral;
