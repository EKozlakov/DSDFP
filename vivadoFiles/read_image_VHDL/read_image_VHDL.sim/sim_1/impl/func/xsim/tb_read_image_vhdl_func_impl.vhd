-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Tue Mar 23 17:10:05 2021
-- Host        : kolibri running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               D:/CPE487A-DSD/Labs/read_image_VHDL/read_image_VHDL.sim/sim_1/impl/func/xsim/tb_read_image_vhdl_func_impl.vhd
-- Design      : read_image_VHDL
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity read_image_VHDL is
  port (
    clock : in STD_LOGIC;
    data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    rdaddress : in STD_LOGIC_VECTOR ( 3 downto 0 );
    wraddress : in STD_LOGIC_VECTOR ( 3 downto 0 );
    we : in STD_LOGIC;
    re : in STD_LOGIC;
    q : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of read_image_VHDL : entity is true;
  attribute ADDR_WIDTH : integer;
  attribute ADDR_WIDTH of read_image_VHDL : entity is 4;
  attribute DATA_WIDTH : integer;
  attribute DATA_WIDTH of read_image_VHDL : entity is 8;
  attribute ECO_CHECKSUM : string;
  attribute ECO_CHECKSUM of read_image_VHDL : entity is "346d2e56";
  attribute IMAGE_FILE_NAME : string;
  attribute IMAGE_FILE_NAME of read_image_VHDL : entity is "D:\CPE487A-DSD\Labs\read_image_VHDL\testimg.mif";
  attribute IMAGE_SIZE : integer;
  attribute IMAGE_SIZE of read_image_VHDL : entity is 15;
end read_image_VHDL;

architecture STRUCTURE of read_image_VHDL is
  signal clock_IBUF : STD_LOGIC;
  signal clock_IBUF_BUFG : STD_LOGIC;
  signal data_IBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_0_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal q_OBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal rdaddress_IBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal re_IBUF : STD_LOGIC;
  signal we_IBUF : STD_LOGIC;
  signal wraddress_IBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_ram_block_reg_0_15_0_5_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_ram_block_reg_0_15_6_7_DOB_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_ram_block_reg_0_15_6_7_DOC_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_ram_block_reg_0_15_6_7_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of ram_block_reg_0_15_0_5 : label is "";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of ram_block_reg_0_15_0_5 : label is 128;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of ram_block_reg_0_15_0_5 : label is "ram_block";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of ram_block_reg_0_15_0_5 : label is "RAM_SDP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of ram_block_reg_0_15_0_5 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of ram_block_reg_0_15_0_5 : label is 15;
  attribute ram_offset : integer;
  attribute ram_offset of ram_block_reg_0_15_0_5 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of ram_block_reg_0_15_0_5 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of ram_block_reg_0_15_0_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of ram_block_reg_0_15_6_7 : label is "";
  attribute RTL_RAM_BITS of ram_block_reg_0_15_6_7 : label is 128;
  attribute RTL_RAM_NAME of ram_block_reg_0_15_6_7 : label is "ram_block";
  attribute RTL_RAM_TYPE of ram_block_reg_0_15_6_7 : label is "RAM_SDP";
  attribute ram_addr_begin of ram_block_reg_0_15_6_7 : label is 0;
  attribute ram_addr_end of ram_block_reg_0_15_6_7 : label is 15;
  attribute ram_offset of ram_block_reg_0_15_6_7 : label is 0;
  attribute ram_slice_begin of ram_block_reg_0_15_6_7 : label is 6;
  attribute ram_slice_end of ram_block_reg_0_15_6_7 : label is 7;
begin
clock_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => clock_IBUF,
      O => clock_IBUF_BUFG
    );
clock_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => clock,
      O => clock_IBUF
    );
\data_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => data(0),
      O => data_IBUF(0)
    );
\data_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => data(1),
      O => data_IBUF(1)
    );
\data_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => data(2),
      O => data_IBUF(2)
    );
\data_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => data(3),
      O => data_IBUF(3)
    );
\data_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => data(4),
      O => data_IBUF(4)
    );
\data_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => data(5),
      O => data_IBUF(5)
    );
\data_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => data(6),
      O => data_IBUF(6)
    );
\data_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => data(7),
      O => data_IBUF(7)
    );
\q_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => q_OBUF(0),
      O => q(0)
    );
\q_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => q_OBUF(1),
      O => q(1)
    );
\q_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => q_OBUF(2),
      O => q(2)
    );
\q_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => q_OBUF(3),
      O => q(3)
    );
\q_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => q_OBUF(4),
      O => q(4)
    );
\q_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => q_OBUF(5),
      O => q(5)
    );
\q_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => q_OBUF(6),
      O => q(6)
    );
\q_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => q_OBUF(7),
      O => q(7)
    );
\q_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_IBUF_BUFG,
      CE => re_IBUF,
      D => p_0_out(0),
      Q => q_OBUF(0),
      R => '0'
    );
\q_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_IBUF_BUFG,
      CE => re_IBUF,
      D => p_0_out(1),
      Q => q_OBUF(1),
      R => '0'
    );
\q_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_IBUF_BUFG,
      CE => re_IBUF,
      D => p_0_out(2),
      Q => q_OBUF(2),
      R => '0'
    );
\q_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_IBUF_BUFG,
      CE => re_IBUF,
      D => p_0_out(3),
      Q => q_OBUF(3),
      R => '0'
    );
\q_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_IBUF_BUFG,
      CE => re_IBUF,
      D => p_0_out(4),
      Q => q_OBUF(4),
      R => '0'
    );
\q_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_IBUF_BUFG,
      CE => re_IBUF,
      D => p_0_out(5),
      Q => q_OBUF(5),
      R => '0'
    );
\q_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_IBUF_BUFG,
      CE => re_IBUF,
      D => p_0_out(6),
      Q => q_OBUF(6),
      R => '0'
    );
\q_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_IBUF_BUFG,
      CE => re_IBUF,
      D => p_0_out(7),
      Q => q_OBUF(7),
      R => '0'
    );
ram_block_reg_0_15_0_5: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"00000000803323B3",
      INIT_B => X"00000000AA433C83",
      INIT_C => X"00000000330C2388",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => rdaddress_IBUF(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => rdaddress_IBUF(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => rdaddress_IBUF(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => wraddress_IBUF(3 downto 0),
      DIA(1 downto 0) => data_IBUF(1 downto 0),
      DIB(1 downto 0) => data_IBUF(3 downto 2),
      DIC(1 downto 0) => data_IBUF(5 downto 4),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => p_0_out(1 downto 0),
      DOB(1 downto 0) => p_0_out(3 downto 2),
      DOC(1 downto 0) => p_0_out(5 downto 4),
      DOD(1 downto 0) => NLW_ram_block_reg_0_15_0_5_DOD_UNCONNECTED(1 downto 0),
      WCLK => clock_IBUF_BUFG,
      WE => we_IBUF
    );
ram_block_reg_0_15_6_7: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"000000009B3C3C8C",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => rdaddress_IBUF(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => rdaddress_IBUF(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => rdaddress_IBUF(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => wraddress_IBUF(3 downto 0),
      DIA(1 downto 0) => data_IBUF(7 downto 6),
      DIB(1 downto 0) => B"00",
      DIC(1 downto 0) => B"00",
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => p_0_out(7 downto 6),
      DOB(1 downto 0) => NLW_ram_block_reg_0_15_6_7_DOB_UNCONNECTED(1 downto 0),
      DOC(1 downto 0) => NLW_ram_block_reg_0_15_6_7_DOC_UNCONNECTED(1 downto 0),
      DOD(1 downto 0) => NLW_ram_block_reg_0_15_6_7_DOD_UNCONNECTED(1 downto 0),
      WCLK => clock_IBUF_BUFG,
      WE => we_IBUF
    );
\rdaddress_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => rdaddress(0),
      O => rdaddress_IBUF(0)
    );
\rdaddress_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => rdaddress(1),
      O => rdaddress_IBUF(1)
    );
\rdaddress_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => rdaddress(2),
      O => rdaddress_IBUF(2)
    );
\rdaddress_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => rdaddress(3),
      O => rdaddress_IBUF(3)
    );
re_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => re,
      O => re_IBUF
    );
we_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => we,
      O => we_IBUF
    );
\wraddress_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => wraddress(0),
      O => wraddress_IBUF(0)
    );
\wraddress_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => wraddress(1),
      O => wraddress_IBUF(1)
    );
\wraddress_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => wraddress(2),
      O => wraddress_IBUF(2)
    );
\wraddress_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => wraddress(3),
      O => wraddress_IBUF(3)
    );
end STRUCTURE;
