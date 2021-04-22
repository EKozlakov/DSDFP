library ieee;
library std;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
use std.textio.all;
-- FPGA4student.com: FPGA/Verilog/VHDL projects for students
-- VHDL tutorial: How to Read images in VHDL
entity read_image_VHDL is
  generic (
    ADDR_WIDTH     : integer := 4;        
    DATA_WIDTH     : integer := 8; --change data width to 4 -- 4 data ports for micro SD connector
    IMAGE_SIZE  : integer := 15; --might need to modify .mif file for more accurate 
    IMAGE_FILE_NAME : string := "D:\CPE487A-DSD\Labs\read_image_VHDL\testimg.mif"
  );
  port(
    clock: IN STD_LOGIC; --assigned in leddec.xdc, Pin E3
    data: IN std_logic_vector ((DATA_WIDTH-1) DOWNTO 0); --assign SD data ports to this, requires change in data width
    rdaddress: IN STD_logic_vector((ADDR_WIDTH-1) downto 0); --? Figure out down the line
    wraddress: IN STD_logic_vector((ADDR_WIDTH-1) downto 0); --? Figure out down the line
    we: IN STD_LOGIC; --write-enable signal : one bit (0 = "I don't wanna write", 1 = "I wanna write")
    re: IN STD_LOGIC;   -- read-enable signal : one bit (0 = "I dont wanna read", 1 = "I wanna read")
    q: OUT std_logic_vector ((DATA_WIDTH-1) DOWNTO 0);
    seg: OUT std_logic_vector (6 DOWNTO 0);
    anode: OUT std_logic_vector (7 DOWNTO 0));
end read_image_VHDL;

architecture behavioral of read_image_VHDL is

TYPE mem_type IS ARRAY(0 TO IMAGE_SIZE) OF std_logic_vector((DATA_WIDTH-1) DOWNTO 0);

impure function init_mem(mif_file_name : in string) return mem_type is
    file mif_file : text open read_mode is mif_file_name;
    variable mif_line : line;
    variable temp_bv : bit_vector(DATA_WIDTH-1 downto 0);
    variable temp_mem : mem_type;
begin
    for i in mem_type'range loop
        readline(mif_file, mif_line);
        read(mif_line, temp_bv);
        temp_mem(i) := to_stdlogicvector(temp_bv);
    end loop;
    return temp_mem;
end function;

signal ram_block: mem_type := init_mem(IMAGE_FILE_NAME);
signal read_address_reg: std_logic_vector((ADDR_WIDTH-1) downto 0) := (others=>'0');

COMPONENT counter IS
    PORT (
            clk : in STD_LOGIC;
            count : OUT STD_LOGIC_VECTOR (15 DOWNTO 0);
            mpx : OUT STD_LOGIC_VECTOR (2 DOWNTO 0)
          );
END COMPONENT;


COMPONENT leddec IS
    PORT (
        dig : IN STD_LOGIC_VECTOR (2 DOWNTO 0);
        data : IN STD_LOGIC_VECTOR (3 DOWNTO 0); --data for display
        anode : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
        seg : OUT STD_LOGIC_VECTOR (6 DOWNTO 0)
    );
END COMPONENT;

signal S : STD_LOGIC_VECTOR (15 DOWNTO 0); --connect C1 and L1 for values of 4 digits.
signal md : STD_LOGIC_VECTOR (2 DOWNTO 0); --mpx selects displays
signal display : STD_LOGIC_VECTOR (3 DOWNTO 0); --Send digit for only 1 display to leddec.
signal front_half_data : STD_LOGIC_VECTOR (3 DOWNTO 0); --will carry first 4 bits of data to begin with. 

begin
  process (clock)
  begin
   if (rising_edge(clock)) then
      if (we = '1') then
        ram_block(to_integer(unsigned(wraddress))) <= data;
        front_half_data <= data((DATA_WIDTH-1) DOWNTO 4);
      end if;
      if (re = '1') then
        q <= ram_block(to_integer(unsigned(rdaddress)));
      end if;
    end if;
  end process;

C1 : counter
PORT MAP (clk => clock, count => S, mpx => md);
L1 : leddec
PORT MAP(dig => md, data => front_half_data, anode => anode, seg => seg);

display <= S(3 DOWNTO 0) WHEN md = "000" ELSE
           S(7 DOWNTO 4) WHEN md = "001" ELSE
           S(11 DOWNTO 8) WHEN md = "010" ELSE
           S(15 DOWNTO 12);

end behavioral;