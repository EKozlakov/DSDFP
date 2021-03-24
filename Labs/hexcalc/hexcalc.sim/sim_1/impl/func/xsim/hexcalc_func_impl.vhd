-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Sun Mar 21 18:25:51 2021
-- Host        : kolibri running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               D:/CPE487A-DSD/Labs/hexcalc/hexcalc.sim/sim_1/impl/func/xsim/hexcalc_func_impl.vhd
-- Design      : hexcalc
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity keypad is
  port (
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \CV3_reg[3]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \pr_state_reg[0]\ : out STD_LOGIC;
    SEG7_seg_OBUF : out STD_LOGIC_VECTOR ( 6 downto 0 );
    SEG7_anode_OBUF : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \pr_state_reg[1]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \pr_state_reg[2]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    KB_col_OBUF : out STD_LOGIC_VECTOR ( 4 downto 1 );
    \acc_reg[3]\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \acc_reg[2]\ : in STD_LOGIC;
    bt_sub_IBUF : in STD_LOGIC;
    bt_plus_IBUF : in STD_LOGIC;
    dig : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \SEG7_seg_OBUF[6]_inst_i_5_0\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \SEG7_seg_OBUF[6]_inst_i_5_1\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \acc_reg[1]\ : in STD_LOGIC;
    \acc_reg[0]\ : in STD_LOGIC;
    bt_eq_IBUF : in STD_LOGIC;
    \pr_state_reg[1]_0\ : in STD_LOGIC;
    \CV1_reg[4]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    CLK : in STD_LOGIC
  );
end keypad;

architecture STRUCTURE of keypad is
  signal CV1 : STD_LOGIC;
  signal \CV1_reg_n_0_[1]\ : STD_LOGIC;
  signal CV2 : STD_LOGIC;
  signal \CV2_reg_n_0_[1]\ : STD_LOGIC;
  signal CV3 : STD_LOGIC;
  signal \^cv3_reg[3]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \CV3_reg_n_0_[1]\ : STD_LOGIC;
  signal CV4 : STD_LOGIC;
  signal \CV4_reg_n_0_[1]\ : STD_LOGIC;
  signal \SEG7_anode_OBUF[0]_inst_i_2_n_0\ : STD_LOGIC;
  signal \SEG7_anode_OBUF[1]_inst_i_2_n_0\ : STD_LOGIC;
  signal \SEG7_anode_OBUF[2]_inst_i_2_n_0\ : STD_LOGIC;
  signal \SEG7_anode_OBUF[3]_inst_i_2_n_0\ : STD_LOGIC;
  signal \SEG7_seg_OBUF[6]_inst_i_2_n_0\ : STD_LOGIC;
  signal \SEG7_seg_OBUF[6]_inst_i_3_n_0\ : STD_LOGIC;
  signal \SEG7_seg_OBUF[6]_inst_i_4_n_0\ : STD_LOGIC;
  signal \SEG7_seg_OBUF[6]_inst_i_5_n_0\ : STD_LOGIC;
  signal data : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal kp_hit : STD_LOGIC;
  signal \operand[0]_i_2_n_0\ : STD_LOGIC;
  signal \operand[0]_i_3_n_0\ : STD_LOGIC;
  signal \operand[0]_i_4_n_0\ : STD_LOGIC;
  signal \operand[1]_i_2_n_0\ : STD_LOGIC;
  signal \operand[1]_i_3_n_0\ : STD_LOGIC;
  signal \operand[1]_i_4_n_0\ : STD_LOGIC;
  signal \operand[2]_i_2_n_0\ : STD_LOGIC;
  signal \operand[2]_i_3_n_0\ : STD_LOGIC;
  signal \operand[2]_i_4_n_0\ : STD_LOGIC;
  signal \operand[2]_i_5_n_0\ : STD_LOGIC;
  signal \operand[3]_i_2_n_0\ : STD_LOGIC;
  signal \operand[3]_i_3_n_0\ : STD_LOGIC;
  signal \operand[3]_i_4_n_0\ : STD_LOGIC;
  signal \operand[3]_i_5_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_10_in : STD_LOGIC;
  signal p_12_in : STD_LOGIC;
  signal p_13_in : STD_LOGIC;
  signal p_14_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal p_2_in : STD_LOGIC;
  signal p_4_in : STD_LOGIC;
  signal p_5_in : STD_LOGIC;
  signal p_6_in : STD_LOGIC;
  signal p_8_in : STD_LOGIC;
  signal p_9_in : STD_LOGIC;
  signal plus_or_sub_reg_i_3_n_0 : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_curr_col_reg[0]\ : label is "iSTATE:0001,iSTATE0:0010,iSTATE1:0100,iSTATE2:1000,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_curr_col_reg[1]\ : label is "iSTATE:0001,iSTATE0:0010,iSTATE1:0100,iSTATE2:1000,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_curr_col_reg[2]\ : label is "iSTATE:0001,iSTATE0:0010,iSTATE1:0100,iSTATE2:1000,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_curr_col_reg[3]\ : label is "iSTATE:0001,iSTATE0:0010,iSTATE1:0100,iSTATE2:1000,";
begin
  \CV3_reg[3]_0\(3 downto 0) <= \^cv3_reg[3]_0\(3 downto 0);
\CV1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => CV1,
      D => \CV1_reg[4]_0\(0),
      Q => \CV1_reg_n_0_[1]\,
      R => '0'
    );
\CV1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => CV1,
      D => \CV1_reg[4]_0\(1),
      Q => p_14_in,
      R => '0'
    );
\CV1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => CV1,
      D => \CV1_reg[4]_0\(2),
      Q => p_13_in,
      R => '0'
    );
\CV1_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => CV1,
      D => \CV1_reg[4]_0\(3),
      Q => p_12_in,
      R => '0'
    );
\CV2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => CV2,
      D => \CV1_reg[4]_0\(0),
      Q => \CV2_reg_n_0_[1]\,
      R => '0'
    );
\CV2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => CV2,
      D => \CV1_reg[4]_0\(1),
      Q => p_10_in,
      R => '0'
    );
\CV2_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => CV2,
      D => \CV1_reg[4]_0\(2),
      Q => p_9_in,
      R => '0'
    );
\CV2_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => CV2,
      D => \CV1_reg[4]_0\(3),
      Q => p_8_in,
      R => '0'
    );
\CV3_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => CV3,
      D => \CV1_reg[4]_0\(0),
      Q => \CV3_reg_n_0_[1]\,
      R => '0'
    );
\CV3_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => CV3,
      D => \CV1_reg[4]_0\(1),
      Q => p_6_in,
      R => '0'
    );
\CV3_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => CV3,
      D => \CV1_reg[4]_0\(2),
      Q => p_5_in,
      R => '0'
    );
\CV3_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => CV3,
      D => \CV1_reg[4]_0\(3),
      Q => p_4_in,
      R => '0'
    );
\CV4_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => CV4,
      D => \CV1_reg[4]_0\(0),
      Q => \CV4_reg_n_0_[1]\,
      R => '0'
    );
\CV4_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => CV4,
      D => \CV1_reg[4]_0\(1),
      Q => p_2_in,
      R => '0'
    );
\CV4_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => CV4,
      D => \CV1_reg[4]_0\(2),
      Q => p_1_in,
      R => '0'
    );
\CV4_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => CV4,
      D => \CV1_reg[4]_0\(3),
      Q => p_0_in,
      R => '0'
    );
\FSM_onehot_curr_col_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => CV4,
      Q => CV1,
      R => '0'
    );
\FSM_onehot_curr_col_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => CV1,
      Q => CV2,
      R => '0'
    );
\FSM_onehot_curr_col_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => CV2,
      Q => CV3,
      R => '0'
    );
\FSM_onehot_curr_col_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => CV3,
      Q => CV4,
      R => '0'
    );
\KB_col_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => CV3,
      I1 => CV2,
      I2 => CV4,
      O => KB_col_OBUF(1)
    );
\KB_col_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => CV3,
      I1 => CV1,
      I2 => CV4,
      O => KB_col_OBUF(2)
    );
\KB_col_OBUF[3]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => CV2,
      I1 => CV1,
      I2 => CV4,
      O => KB_col_OBUF(3)
    );
\KB_col_OBUF[4]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => CV2,
      I1 => CV1,
      I2 => CV3,
      O => KB_col_OBUF(4)
    );
\SEG7_anode_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF0001"
    )
        port map (
      I0 => \SEG7_anode_OBUF[0]_inst_i_2_n_0\,
      I1 => \SEG7_anode_OBUF[1]_inst_i_2_n_0\,
      I2 => \SEG7_anode_OBUF[3]_inst_i_2_n_0\,
      I3 => \SEG7_anode_OBUF[2]_inst_i_2_n_0\,
      I4 => dig(0),
      I5 => dig(1),
      O => SEG7_anode_OBUF(0)
    );
\SEG7_anode_OBUF[0]_inst_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => data(0),
      I1 => data(1),
      I2 => data(2),
      I3 => data(3),
      O => \SEG7_anode_OBUF[0]_inst_i_2_n_0\
    );
\SEG7_anode_OBUF[0]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE44CCCCFC0C"
    )
        port map (
      I0 => kp_hit,
      I1 => \SEG7_seg_OBUF[6]_inst_i_5_0\(0),
      I2 => Q(2),
      I3 => \SEG7_seg_OBUF[6]_inst_i_5_1\(0),
      I4 => Q(0),
      I5 => Q(1),
      O => data(0)
    );
\SEG7_anode_OBUF[0]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE44CCCCFC0C"
    )
        port map (
      I0 => kp_hit,
      I1 => \SEG7_seg_OBUF[6]_inst_i_5_0\(1),
      I2 => Q(2),
      I3 => \SEG7_seg_OBUF[6]_inst_i_5_1\(1),
      I4 => Q(0),
      I5 => Q(1),
      O => data(1)
    );
\SEG7_anode_OBUF[0]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE44CCCCFC0C"
    )
        port map (
      I0 => kp_hit,
      I1 => \SEG7_seg_OBUF[6]_inst_i_5_0\(2),
      I2 => Q(2),
      I3 => \SEG7_seg_OBUF[6]_inst_i_5_1\(2),
      I4 => Q(0),
      I5 => Q(1),
      O => data(2)
    );
\SEG7_anode_OBUF[0]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE44CCCCFC0C"
    )
        port map (
      I0 => kp_hit,
      I1 => \SEG7_seg_OBUF[6]_inst_i_5_0\(3),
      I2 => Q(2),
      I3 => \SEG7_seg_OBUF[6]_inst_i_5_1\(3),
      I4 => Q(0),
      I5 => Q(1),
      O => data(3)
    );
\SEG7_anode_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF01FF"
    )
        port map (
      I0 => \SEG7_anode_OBUF[1]_inst_i_2_n_0\,
      I1 => \SEG7_anode_OBUF[2]_inst_i_2_n_0\,
      I2 => \SEG7_anode_OBUF[3]_inst_i_2_n_0\,
      I3 => dig(0),
      I4 => dig(1),
      O => SEG7_anode_OBUF(1)
    );
\SEG7_anode_OBUF[1]_inst_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => data(4),
      I1 => data(5),
      I2 => data(6),
      I3 => data(7),
      O => \SEG7_anode_OBUF[1]_inst_i_2_n_0\
    );
\SEG7_anode_OBUF[1]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE44CCCCFC0C"
    )
        port map (
      I0 => kp_hit,
      I1 => \SEG7_seg_OBUF[6]_inst_i_5_0\(4),
      I2 => Q(2),
      I3 => \SEG7_seg_OBUF[6]_inst_i_5_1\(4),
      I4 => Q(0),
      I5 => Q(1),
      O => data(4)
    );
\SEG7_anode_OBUF[1]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE44CCCCFC0C"
    )
        port map (
      I0 => kp_hit,
      I1 => \SEG7_seg_OBUF[6]_inst_i_5_0\(5),
      I2 => Q(2),
      I3 => \SEG7_seg_OBUF[6]_inst_i_5_1\(5),
      I4 => Q(0),
      I5 => Q(1),
      O => data(5)
    );
\SEG7_anode_OBUF[1]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE44CCCCFC0C"
    )
        port map (
      I0 => kp_hit,
      I1 => \SEG7_seg_OBUF[6]_inst_i_5_0\(6),
      I2 => Q(2),
      I3 => \SEG7_seg_OBUF[6]_inst_i_5_1\(6),
      I4 => Q(0),
      I5 => Q(1),
      O => data(6)
    );
\SEG7_anode_OBUF[1]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE44CCCCFC0C"
    )
        port map (
      I0 => kp_hit,
      I1 => \SEG7_seg_OBUF[6]_inst_i_5_0\(7),
      I2 => Q(2),
      I3 => \SEG7_seg_OBUF[6]_inst_i_5_1\(7),
      I4 => Q(0),
      I5 => Q(1),
      O => data(7)
    );
\SEG7_anode_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF1F"
    )
        port map (
      I0 => \SEG7_anode_OBUF[3]_inst_i_2_n_0\,
      I1 => \SEG7_anode_OBUF[2]_inst_i_2_n_0\,
      I2 => dig(1),
      I3 => dig(0),
      O => SEG7_anode_OBUF(2)
    );
\SEG7_anode_OBUF[2]_inst_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => data(8),
      I1 => data(9),
      I2 => data(10),
      I3 => data(11),
      O => \SEG7_anode_OBUF[2]_inst_i_2_n_0\
    );
\SEG7_anode_OBUF[2]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE44CCCCFC0C"
    )
        port map (
      I0 => kp_hit,
      I1 => \SEG7_seg_OBUF[6]_inst_i_5_0\(8),
      I2 => Q(2),
      I3 => \SEG7_seg_OBUF[6]_inst_i_5_1\(8),
      I4 => Q(0),
      I5 => Q(1),
      O => data(8)
    );
\SEG7_anode_OBUF[2]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE44CCCCFC0C"
    )
        port map (
      I0 => kp_hit,
      I1 => \SEG7_seg_OBUF[6]_inst_i_5_0\(9),
      I2 => Q(2),
      I3 => \SEG7_seg_OBUF[6]_inst_i_5_1\(9),
      I4 => Q(0),
      I5 => Q(1),
      O => data(9)
    );
\SEG7_anode_OBUF[2]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE44CCCCFC0C"
    )
        port map (
      I0 => kp_hit,
      I1 => \SEG7_seg_OBUF[6]_inst_i_5_0\(10),
      I2 => Q(2),
      I3 => \SEG7_seg_OBUF[6]_inst_i_5_1\(10),
      I4 => Q(0),
      I5 => Q(1),
      O => data(10)
    );
\SEG7_anode_OBUF[2]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE44CCCCFC0C"
    )
        port map (
      I0 => kp_hit,
      I1 => \SEG7_seg_OBUF[6]_inst_i_5_0\(11),
      I2 => Q(2),
      I3 => \SEG7_seg_OBUF[6]_inst_i_5_1\(11),
      I4 => Q(0),
      I5 => Q(1),
      O => data(11)
    );
\SEG7_anode_OBUF[3]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => dig(1),
      I1 => dig(0),
      I2 => \SEG7_anode_OBUF[3]_inst_i_2_n_0\,
      O => SEG7_anode_OBUF(3)
    );
\SEG7_anode_OBUF[3]_inst_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => data(12),
      I1 => data(13),
      I2 => data(15),
      I3 => data(14),
      O => \SEG7_anode_OBUF[3]_inst_i_2_n_0\
    );
\SEG7_anode_OBUF[3]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE44CCCCFC0C"
    )
        port map (
      I0 => kp_hit,
      I1 => \SEG7_seg_OBUF[6]_inst_i_5_0\(12),
      I2 => Q(2),
      I3 => \SEG7_seg_OBUF[6]_inst_i_5_1\(12),
      I4 => Q(0),
      I5 => Q(1),
      O => data(12)
    );
\SEG7_anode_OBUF[3]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE44CCCCFC0C"
    )
        port map (
      I0 => kp_hit,
      I1 => \SEG7_seg_OBUF[6]_inst_i_5_0\(13),
      I2 => Q(2),
      I3 => \SEG7_seg_OBUF[6]_inst_i_5_1\(13),
      I4 => Q(0),
      I5 => Q(1),
      O => data(13)
    );
\SEG7_anode_OBUF[3]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE44CCCCFC0C"
    )
        port map (
      I0 => kp_hit,
      I1 => \SEG7_seg_OBUF[6]_inst_i_5_0\(15),
      I2 => Q(2),
      I3 => \SEG7_seg_OBUF[6]_inst_i_5_1\(15),
      I4 => Q(0),
      I5 => Q(1),
      O => data(15)
    );
\SEG7_anode_OBUF[3]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE44CCCCFC0C"
    )
        port map (
      I0 => kp_hit,
      I1 => \SEG7_seg_OBUF[6]_inst_i_5_0\(14),
      I2 => Q(2),
      I3 => \SEG7_seg_OBUF[6]_inst_i_5_1\(14),
      I4 => Q(0),
      I5 => Q(1),
      O => data(14)
    );
\SEG7_seg_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1805"
    )
        port map (
      I0 => \SEG7_seg_OBUF[6]_inst_i_4_n_0\,
      I1 => \SEG7_seg_OBUF[6]_inst_i_3_n_0\,
      I2 => \SEG7_seg_OBUF[6]_inst_i_5_n_0\,
      I3 => \SEG7_seg_OBUF[6]_inst_i_2_n_0\,
      O => SEG7_seg_OBUF(0)
    );
\SEG7_seg_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5910"
    )
        port map (
      I0 => \SEG7_seg_OBUF[6]_inst_i_5_n_0\,
      I1 => \SEG7_seg_OBUF[6]_inst_i_2_n_0\,
      I2 => \SEG7_seg_OBUF[6]_inst_i_4_n_0\,
      I3 => \SEG7_seg_OBUF[6]_inst_i_3_n_0\,
      O => SEG7_seg_OBUF(1)
    );
\SEG7_seg_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0B2A"
    )
        port map (
      I0 => \SEG7_seg_OBUF[6]_inst_i_3_n_0\,
      I1 => \SEG7_seg_OBUF[6]_inst_i_4_n_0\,
      I2 => \SEG7_seg_OBUF[6]_inst_i_5_n_0\,
      I3 => \SEG7_seg_OBUF[6]_inst_i_2_n_0\,
      O => SEG7_seg_OBUF(2)
    );
\SEG7_seg_OBUF[3]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8924"
    )
        port map (
      I0 => \SEG7_seg_OBUF[6]_inst_i_4_n_0\,
      I1 => \SEG7_seg_OBUF[6]_inst_i_2_n_0\,
      I2 => \SEG7_seg_OBUF[6]_inst_i_5_n_0\,
      I3 => \SEG7_seg_OBUF[6]_inst_i_3_n_0\,
      O => SEG7_seg_OBUF(3)
    );
\SEG7_seg_OBUF[4]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C410"
    )
        port map (
      I0 => \SEG7_seg_OBUF[6]_inst_i_3_n_0\,
      I1 => \SEG7_seg_OBUF[6]_inst_i_2_n_0\,
      I2 => \SEG7_seg_OBUF[6]_inst_i_4_n_0\,
      I3 => \SEG7_seg_OBUF[6]_inst_i_5_n_0\,
      O => SEG7_seg_OBUF(4)
    );
\SEG7_seg_OBUF[5]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D680"
    )
        port map (
      I0 => \SEG7_seg_OBUF[6]_inst_i_3_n_0\,
      I1 => \SEG7_seg_OBUF[6]_inst_i_4_n_0\,
      I2 => \SEG7_seg_OBUF[6]_inst_i_5_n_0\,
      I3 => \SEG7_seg_OBUF[6]_inst_i_2_n_0\,
      O => SEG7_seg_OBUF(5)
    );
\SEG7_seg_OBUF[6]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4806"
    )
        port map (
      I0 => \SEG7_seg_OBUF[6]_inst_i_2_n_0\,
      I1 => \SEG7_seg_OBUF[6]_inst_i_3_n_0\,
      I2 => \SEG7_seg_OBUF[6]_inst_i_4_n_0\,
      I3 => \SEG7_seg_OBUF[6]_inst_i_5_n_0\,
      O => SEG7_seg_OBUF(6)
    );
\SEG7_seg_OBUF[6]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => data(10),
      I1 => data(14),
      I2 => data(2),
      I3 => dig(1),
      I4 => dig(0),
      I5 => data(6),
      O => \SEG7_seg_OBUF[6]_inst_i_2_n_0\
    );
\SEG7_seg_OBUF[6]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => data(8),
      I1 => data(12),
      I2 => data(0),
      I3 => dig(1),
      I4 => dig(0),
      I5 => data(4),
      O => \SEG7_seg_OBUF[6]_inst_i_3_n_0\
    );
\SEG7_seg_OBUF[6]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => data(9),
      I1 => data(13),
      I2 => data(1),
      I3 => dig(1),
      I4 => dig(0),
      I5 => data(5),
      O => \SEG7_seg_OBUF[6]_inst_i_4_n_0\
    );
\SEG7_seg_OBUF[6]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => data(11),
      I1 => data(15),
      I2 => data(3),
      I3 => dig(1),
      I4 => dig(0),
      I5 => data(7),
      O => \SEG7_seg_OBUF[6]_inst_i_5_n_0\
    );
\acc[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFA0"
    )
        port map (
      I0 => \acc_reg[0]\,
      I1 => Q(0),
      I2 => Q(2),
      I3 => \^cv3_reg[3]_0\(0),
      O => D(0)
    );
\acc[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08080E04"
    )
        port map (
      I0 => Q(2),
      I1 => kp_hit,
      I2 => Q(1),
      I3 => bt_eq_IBUF,
      I4 => Q(0),
      O => \pr_state_reg[2]\(0)
    );
\acc[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFA0"
    )
        port map (
      I0 => \acc_reg[1]\,
      I1 => Q(0),
      I2 => Q(2),
      I3 => \^cv3_reg[3]_0\(1),
      O => D(1)
    );
\acc[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFA0"
    )
        port map (
      I0 => \acc_reg[2]\,
      I1 => Q(0),
      I2 => Q(2),
      I3 => \^cv3_reg[3]_0\(2),
      O => D(2)
    );
\acc[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFA0"
    )
        port map (
      I0 => \acc_reg[3]\,
      I1 => Q(0),
      I2 => Q(2),
      I3 => \^cv3_reg[3]_0\(3),
      O => D(3)
    );
\operand[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A2220000FFFFFFFF"
    )
        port map (
      I0 => \operand[0]_i_2_n_0\,
      I1 => p_13_in,
      I2 => \CV2_reg_n_0_[1]\,
      I3 => p_12_in,
      I4 => p_14_in,
      I5 => \CV1_reg_n_0_[1]\,
      O => \^cv3_reg[3]_0\(0)
    );
\operand[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAAAAAAABAAABAAA"
    )
        port map (
      I0 => \operand[0]_i_3_n_0\,
      I1 => \operand[0]_i_4_n_0\,
      I2 => p_9_in,
      I3 => p_6_in,
      I4 => p_4_in,
      I5 => p_5_in,
      O => \operand[0]_i_2_n_0\
    );
\operand[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"77F7F7F7"
    )
        port map (
      I0 => p_13_in,
      I1 => p_10_in,
      I2 => p_9_in,
      I3 => \CV3_reg_n_0_[1]\,
      I4 => p_8_in,
      O => \operand[0]_i_3_n_0\
    );
\operand[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7005500"
    )
        port map (
      I0 => \CV4_reg_n_0_[1]\,
      I1 => p_1_in,
      I2 => p_0_in,
      I3 => p_5_in,
      I4 => p_2_in,
      O => \operand[0]_i_4_n_0\
    );
\operand[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55100000"
    )
        port map (
      I0 => Q(0),
      I1 => bt_eq_IBUF,
      I2 => Q(2),
      I3 => Q(1),
      I4 => kp_hit,
      O => E(0)
    );
\operand[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000800080808000"
    )
        port map (
      I0 => \operand[1]_i_2_n_0\,
      I1 => p_14_in,
      I2 => \CV1_reg_n_0_[1]\,
      I3 => \operand[1]_i_3_n_0\,
      I4 => p_5_in,
      I5 => \operand[1]_i_4_n_0\,
      O => \^cv3_reg[3]_0\(1)
    );
\operand[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F5757575"
    )
        port map (
      I0 => p_13_in,
      I1 => \CV2_reg_n_0_[1]\,
      I2 => p_12_in,
      I3 => p_9_in,
      I4 => p_10_in,
      O => \operand[1]_i_2_n_0\
    );
\operand[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => p_6_in,
      I1 => \CV2_reg_n_0_[1]\,
      I2 => p_13_in,
      I3 => \CV3_reg_n_0_[1]\,
      I4 => p_8_in,
      O => \operand[1]_i_3_n_0\
    );
\operand[1]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => p_4_in,
      I1 => \CV4_reg_n_0_[1]\,
      I2 => p_2_in,
      O => \operand[1]_i_4_n_0\
    );
\operand[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888AAAAAAAAAAAAA"
    )
        port map (
      I0 => \operand[2]_i_2_n_0\,
      I1 => \operand[2]_i_3_n_0\,
      I2 => p_10_in,
      I3 => \operand[2]_i_4_n_0\,
      I4 => p_14_in,
      I5 => p_13_in,
      O => \^cv3_reg[3]_0\(2)
    );
\operand[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF00000000"
    )
        port map (
      I0 => \operand[3]_i_5_n_0\,
      I1 => p_10_in,
      I2 => p_13_in,
      I3 => p_14_in,
      I4 => p_6_in,
      I5 => \CV1_reg_n_0_[1]\,
      O => \operand[2]_i_2_n_0\
    );
\operand[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000D00"
    )
        port map (
      I0 => p_8_in,
      I1 => \CV3_reg_n_0_[1]\,
      I2 => \operand[2]_i_4_n_0\,
      I3 => p_9_in,
      I4 => \operand[2]_i_5_n_0\,
      O => \operand[2]_i_3_n_0\
    );
\operand[2]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \CV2_reg_n_0_[1]\,
      I1 => p_12_in,
      O => \operand[2]_i_4_n_0\
    );
\operand[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D0DD000050550000"
    )
        port map (
      I0 => p_5_in,
      I1 => \operand[3]_i_4_n_0\,
      I2 => p_6_in,
      I3 => \CV3_reg_n_0_[1]\,
      I4 => p_8_in,
      I5 => p_4_in,
      O => \operand[2]_i_5_n_0\
    );
\operand[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444444440444"
    )
        port map (
      I0 => \operand[3]_i_2_n_0\,
      I1 => \operand[3]_i_3_n_0\,
      I2 => p_5_in,
      I3 => p_9_in,
      I4 => \operand[3]_i_4_n_0\,
      I5 => \operand[3]_i_5_n_0\,
      O => \^cv3_reg[3]_0\(3)
    );
\operand[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => p_14_in,
      I1 => p_13_in,
      I2 => p_10_in,
      O => \operand[3]_i_2_n_0\
    );
\operand[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000444444444444"
    )
        port map (
      I0 => \operand[2]_i_4_n_0\,
      I1 => \CV1_reg_n_0_[1]\,
      I2 => \CV3_reg_n_0_[1]\,
      I3 => p_6_in,
      I4 => p_8_in,
      I5 => p_9_in,
      O => \operand[3]_i_3_n_0\
    );
\operand[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => p_2_in,
      I1 => \CV4_reg_n_0_[1]\,
      O => \operand[3]_i_4_n_0\
    );
\operand[3]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => p_0_in,
      I1 => p_1_in,
      I2 => p_8_in,
      I3 => p_4_in,
      O => \operand[3]_i_5_n_0\
    );
plus_or_sub_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000000E"
    )
        port map (
      I0 => bt_sub_IBUF,
      I1 => bt_plus_IBUF,
      I2 => Q(0),
      I3 => Q(1),
      I4 => Q(2),
      I5 => kp_hit,
      O => \pr_state_reg[0]\
    );
plus_or_sub_reg_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFBFFF"
    )
        port map (
      I0 => \operand[3]_i_5_n_0\,
      I1 => p_6_in,
      I2 => p_12_in,
      I3 => \CV2_reg_n_0_[1]\,
      I4 => \operand[3]_i_2_n_0\,
      I5 => plus_or_sub_reg_i_3_n_0,
      O => kp_hit
    );
plus_or_sub_reg_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \CV1_reg_n_0_[1]\,
      I1 => p_9_in,
      I2 => \CV3_reg_n_0_[1]\,
      I3 => p_5_in,
      I4 => p_2_in,
      I5 => \CV4_reg_n_0_[1]\,
      O => plus_or_sub_reg_i_3_n_0
    );
\pr_state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFE0"
    )
        port map (
      I0 => bt_eq_IBUF,
      I1 => Q(0),
      I2 => Q(2),
      I3 => kp_hit,
      O => \pr_state_reg[1]\(0)
    );
\pr_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0C000C004F434F40"
    )
        port map (
      I0 => bt_eq_IBUF,
      I1 => kp_hit,
      I2 => Q(2),
      I3 => Q(1),
      I4 => \pr_state_reg[1]_0\,
      I5 => Q(0),
      O => \pr_state_reg[1]\(1)
    );
\pr_state[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0FAF0C00"
    )
        port map (
      I0 => bt_eq_IBUF,
      I1 => Q(1),
      I2 => kp_hit,
      I3 => Q(0),
      I4 => Q(2),
      O => \pr_state_reg[1]\(2)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity hexcalc is
  port (
    clk_50MHz : in STD_LOGIC;
    SEG7_anode : out STD_LOGIC_VECTOR ( 3 downto 0 );
    SEG7_seg : out STD_LOGIC_VECTOR ( 6 downto 0 );
    bt_clr : in STD_LOGIC;
    bt_plus : in STD_LOGIC;
    bt_eq : in STD_LOGIC;
    KB_col : out STD_LOGIC_VECTOR ( 4 downto 1 );
    KB_row : in STD_LOGIC_VECTOR ( 4 downto 1 );
    bt_sub : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of hexcalc : entity is true;
  attribute ECO_CHECKSUM : string;
  attribute ECO_CHECKSUM of hexcalc : entity is "59ca69bc";
end hexcalc;

architecture STRUCTURE of hexcalc is
  signal KB_col_OBUF : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal KB_row_IBUF : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal SEG7_anode_OBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal SEG7_seg_OBUF : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal acc : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \acc[0]_i_2_n_0\ : STD_LOGIC;
  signal \acc[10]_i_2_n_0\ : STD_LOGIC;
  signal \acc[11]_i_10_n_0\ : STD_LOGIC;
  signal \acc[11]_i_11_n_0\ : STD_LOGIC;
  signal \acc[11]_i_12_n_0\ : STD_LOGIC;
  signal \acc[11]_i_3_n_0\ : STD_LOGIC;
  signal \acc[11]_i_4_n_0\ : STD_LOGIC;
  signal \acc[11]_i_5_n_0\ : STD_LOGIC;
  signal \acc[11]_i_6_n_0\ : STD_LOGIC;
  signal \acc[11]_i_7_n_0\ : STD_LOGIC;
  signal \acc[11]_i_9_n_0\ : STD_LOGIC;
  signal \acc[12]_i_2_n_0\ : STD_LOGIC;
  signal \acc[13]_i_2_n_0\ : STD_LOGIC;
  signal \acc[14]_i_2_n_0\ : STD_LOGIC;
  signal \acc[15]_i_10_n_0\ : STD_LOGIC;
  signal \acc[15]_i_11_n_0\ : STD_LOGIC;
  signal \acc[15]_i_12_n_0\ : STD_LOGIC;
  signal \acc[15]_i_13_n_0\ : STD_LOGIC;
  signal \acc[15]_i_4_n_0\ : STD_LOGIC;
  signal \acc[15]_i_5_n_0\ : STD_LOGIC;
  signal \acc[15]_i_6_n_0\ : STD_LOGIC;
  signal \acc[15]_i_7_n_0\ : STD_LOGIC;
  signal \acc[15]_i_8_n_0\ : STD_LOGIC;
  signal \acc[1]_i_2_n_0\ : STD_LOGIC;
  signal \acc[2]_i_2_n_0\ : STD_LOGIC;
  signal \acc[3]_i_2_n_0\ : STD_LOGIC;
  signal \acc[3]_i_4_n_0\ : STD_LOGIC;
  signal \acc[3]_i_5_n_0\ : STD_LOGIC;
  signal \acc[3]_i_6_n_0\ : STD_LOGIC;
  signal \acc[4]_i_2_n_0\ : STD_LOGIC;
  signal \acc[5]_i_2_n_0\ : STD_LOGIC;
  signal \acc[6]_i_2_n_0\ : STD_LOGIC;
  signal \acc[7]_i_10_n_0\ : STD_LOGIC;
  signal \acc[7]_i_11_n_0\ : STD_LOGIC;
  signal \acc[7]_i_12_n_0\ : STD_LOGIC;
  signal \acc[7]_i_13_n_0\ : STD_LOGIC;
  signal \acc[7]_i_14_n_0\ : STD_LOGIC;
  signal \acc[7]_i_15_n_0\ : STD_LOGIC;
  signal \acc[7]_i_16_n_0\ : STD_LOGIC;
  signal \acc[7]_i_17_n_0\ : STD_LOGIC;
  signal \acc[7]_i_3_n_0\ : STD_LOGIC;
  signal \acc[7]_i_5_n_0\ : STD_LOGIC;
  signal \acc[7]_i_6_n_0\ : STD_LOGIC;
  signal \acc[7]_i_7_n_0\ : STD_LOGIC;
  signal \acc[7]_i_8_n_0\ : STD_LOGIC;
  signal \acc[8]_i_2_n_0\ : STD_LOGIC;
  signal \acc[9]_i_2_n_0\ : STD_LOGIC;
  signal \acc_reg[11]_i_2_n_0\ : STD_LOGIC;
  signal \acc_reg[11]_i_8_n_0\ : STD_LOGIC;
  signal \acc_reg[11]_i_8_n_4\ : STD_LOGIC;
  signal \acc_reg[11]_i_8_n_5\ : STD_LOGIC;
  signal \acc_reg[11]_i_8_n_6\ : STD_LOGIC;
  signal \acc_reg[11]_i_8_n_7\ : STD_LOGIC;
  signal \acc_reg[15]_i_9_n_4\ : STD_LOGIC;
  signal \acc_reg[15]_i_9_n_5\ : STD_LOGIC;
  signal \acc_reg[15]_i_9_n_6\ : STD_LOGIC;
  signal \acc_reg[15]_i_9_n_7\ : STD_LOGIC;
  signal \acc_reg[3]_i_3_n_0\ : STD_LOGIC;
  signal \acc_reg[3]_i_3_n_4\ : STD_LOGIC;
  signal \acc_reg[3]_i_3_n_5\ : STD_LOGIC;
  signal \acc_reg[3]_i_3_n_6\ : STD_LOGIC;
  signal \acc_reg[3]_i_3_n_7\ : STD_LOGIC;
  signal \acc_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \acc_reg[7]_i_4_n_0\ : STD_LOGIC;
  signal \acc_reg[7]_i_9_n_0\ : STD_LOGIC;
  signal \acc_reg[7]_i_9_n_4\ : STD_LOGIC;
  signal \acc_reg[7]_i_9_n_5\ : STD_LOGIC;
  signal \acc_reg[7]_i_9_n_6\ : STD_LOGIC;
  signal \acc_reg[7]_i_9_n_7\ : STD_LOGIC;
  signal bt_clr_IBUF : STD_LOGIC;
  signal bt_eq_IBUF : STD_LOGIC;
  signal bt_plus_IBUF : STD_LOGIC;
  signal bt_sub_IBUF : STD_LOGIC;
  signal clk_50MHz_IBUF : STD_LOGIC;
  signal clk_50MHz_IBUF_BUFG : STD_LOGIC;
  signal \cnt[0]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[10]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[11]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[12]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[13]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[14]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[16]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[19]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[4]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[5]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[6]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[7]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[8]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[9]\ : STD_LOGIC;
  signal dig : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal kp1_n_23 : STD_LOGIC;
  signal kp1_n_24 : STD_LOGIC;
  signal kp1_n_4 : STD_LOGIC;
  signal kp1_n_5 : STD_LOGIC;
  signal kp1_n_6 : STD_LOGIC;
  signal kp1_n_7 : STD_LOGIC;
  signal kp1_n_8 : STD_LOGIC;
  signal nx_acc : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal nx_operand : STD_LOGIC_VECTOR ( 15 downto 4 );
  signal nx_state : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal operand : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal plusOp : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal plus_or_sub : STD_LOGIC;
  signal pr_state : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \pr_state[1]_i_2_n_0\ : STD_LOGIC;
  signal samp_ck : STD_LOGIC;
  signal sm_clk : STD_LOGIC;
  signal sm_clk_BUFG : STD_LOGIC;
  signal \NLW_acc_reg[11]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_acc_reg[11]_i_8_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_acc_reg[15]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_acc_reg[15]_i_9_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_acc_reg[3]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_acc_reg[7]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_acc_reg[7]_i_4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_acc_reg[7]_i_9_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_cnt_reg[0]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_cnt_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_cnt_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_cnt_reg[20]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_cnt_reg[20]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_cnt_reg[4]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_cnt_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \acc_reg[11]_i_2\ : label is 35;
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \acc_reg[11]_i_2\ : label is "SWEEP";
  attribute ADDER_THRESHOLD of \acc_reg[11]_i_8\ : label is 35;
  attribute OPT_MODIFIED of \acc_reg[11]_i_8\ : label is "SWEEP";
  attribute ADDER_THRESHOLD of \acc_reg[15]_i_3\ : label is 35;
  attribute OPT_MODIFIED of \acc_reg[15]_i_3\ : label is "SWEEP";
  attribute ADDER_THRESHOLD of \acc_reg[15]_i_9\ : label is 35;
  attribute OPT_MODIFIED of \acc_reg[15]_i_9\ : label is "SWEEP";
  attribute ADDER_THRESHOLD of \acc_reg[3]_i_3\ : label is 35;
  attribute OPT_MODIFIED of \acc_reg[3]_i_3\ : label is "SWEEP";
  attribute ADDER_THRESHOLD of \acc_reg[7]_i_2\ : label is 35;
  attribute OPT_MODIFIED of \acc_reg[7]_i_2\ : label is "SWEEP";
  attribute ADDER_THRESHOLD of \acc_reg[7]_i_4\ : label is 35;
  attribute OPT_MODIFIED of \acc_reg[7]_i_4\ : label is "SWEEP";
  attribute ADDER_THRESHOLD of \acc_reg[7]_i_9\ : label is 35;
  attribute OPT_MODIFIED of \acc_reg[7]_i_9\ : label is "SWEEP";
  attribute ADDER_THRESHOLD of \cnt_reg[0]_i_1\ : label is 11;
  attribute OPT_MODIFIED of \cnt_reg[0]_i_1\ : label is "SWEEP";
  attribute ADDER_THRESHOLD of \cnt_reg[12]_i_1\ : label is 11;
  attribute OPT_MODIFIED of \cnt_reg[12]_i_1\ : label is "SWEEP";
  attribute ADDER_THRESHOLD of \cnt_reg[16]_i_1\ : label is 11;
  attribute OPT_MODIFIED of \cnt_reg[16]_i_1\ : label is "SWEEP";
  attribute ADDER_THRESHOLD of \cnt_reg[20]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \cnt_reg[4]_i_1\ : label is 11;
  attribute OPT_MODIFIED of \cnt_reg[4]_i_1\ : label is "SWEEP";
  attribute ADDER_THRESHOLD of \cnt_reg[8]_i_1\ : label is 11;
  attribute OPT_MODIFIED of \cnt_reg[8]_i_1\ : label is "SWEEP";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \operand[10]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \operand[11]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \operand[12]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \operand[13]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \operand[14]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \operand[15]_i_2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \operand[4]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \operand[5]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \operand[6]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \operand[7]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \operand[8]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \operand[9]_i_1\ : label is "soft_lutpair13";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of plus_or_sub_reg : label is "LD";
begin
\KB_col_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => KB_col_OBUF(1),
      O => KB_col(1)
    );
\KB_col_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => KB_col_OBUF(2),
      O => KB_col(2)
    );
\KB_col_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => KB_col_OBUF(3),
      O => KB_col(3)
    );
\KB_col_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => KB_col_OBUF(4),
      O => KB_col(4)
    );
\KB_row_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => KB_row(1),
      O => KB_row_IBUF(1)
    );
\KB_row_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => KB_row(2),
      O => KB_row_IBUF(2)
    );
\KB_row_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => KB_row(3),
      O => KB_row_IBUF(3)
    );
\KB_row_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => KB_row(4),
      O => KB_row_IBUF(4)
    );
\SEG7_anode_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => SEG7_anode_OBUF(0),
      O => SEG7_anode(0)
    );
\SEG7_anode_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => SEG7_anode_OBUF(1),
      O => SEG7_anode(1)
    );
\SEG7_anode_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => SEG7_anode_OBUF(2),
      O => SEG7_anode(2)
    );
\SEG7_anode_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => SEG7_anode_OBUF(3),
      O => SEG7_anode(3)
    );
\SEG7_seg_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => SEG7_seg_OBUF(0),
      O => SEG7_seg(0)
    );
\SEG7_seg_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => SEG7_seg_OBUF(1),
      O => SEG7_seg(1)
    );
\SEG7_seg_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => SEG7_seg_OBUF(2),
      O => SEG7_seg(2)
    );
\SEG7_seg_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => SEG7_seg_OBUF(3),
      O => SEG7_seg(3)
    );
\SEG7_seg_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => SEG7_seg_OBUF(4),
      O => SEG7_seg(4)
    );
\SEG7_seg_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => SEG7_seg_OBUF(5),
      O => SEG7_seg(5)
    );
\SEG7_seg_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => SEG7_seg_OBUF(6),
      O => SEG7_seg(6)
    );
\acc[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00BF008000800080"
    )
        port map (
      I0 => plusOp(0),
      I1 => plus_or_sub,
      I2 => bt_eq_IBUF,
      I3 => pr_state(0),
      I4 => \acc_reg[3]_i_3_n_7\,
      I5 => acc(0),
      O => \acc[0]_i_2_n_0\
    );
\acc[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFF8000"
    )
        port map (
      I0 => pr_state(2),
      I1 => bt_eq_IBUF,
      I2 => plus_or_sub,
      I3 => plusOp(10),
      I4 => \acc[10]_i_2_n_0\,
      I5 => pr_state(0),
      O => nx_acc(10)
    );
\acc[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7000FFFF70000000"
    )
        port map (
      I0 => plus_or_sub,
      I1 => bt_eq_IBUF,
      I2 => \acc_reg[11]_i_8_n_5\,
      I3 => acc(10),
      I4 => pr_state(2),
      I5 => acc(6),
      O => \acc[10]_i_2_n_0\
    );
\acc[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFF8000"
    )
        port map (
      I0 => pr_state(2),
      I1 => bt_eq_IBUF,
      I2 => plus_or_sub,
      I3 => plusOp(11),
      I4 => \acc[11]_i_3_n_0\,
      I5 => pr_state(0),
      O => nx_acc(11)
    );
\acc[11]_i_10\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => operand(10),
      O => \acc[11]_i_10_n_0\
    );
\acc[11]_i_11\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => operand(9),
      O => \acc[11]_i_11_n_0\
    );
\acc[11]_i_12\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => operand(8),
      O => \acc[11]_i_12_n_0\
    );
\acc[11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7000FFFF70000000"
    )
        port map (
      I0 => plus_or_sub,
      I1 => bt_eq_IBUF,
      I2 => \acc_reg[11]_i_8_n_4\,
      I3 => acc(11),
      I4 => pr_state(2),
      I5 => acc(7),
      O => \acc[11]_i_3_n_0\
    );
\acc[11]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => acc(11),
      I1 => operand(11),
      O => \acc[11]_i_4_n_0\
    );
\acc[11]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => acc(10),
      I1 => operand(10),
      O => \acc[11]_i_5_n_0\
    );
\acc[11]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => acc(9),
      I1 => operand(9),
      O => \acc[11]_i_6_n_0\
    );
\acc[11]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => acc(8),
      I1 => operand(8),
      O => \acc[11]_i_7_n_0\
    );
\acc[11]_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => operand(11),
      O => \acc[11]_i_9_n_0\
    );
\acc[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFF8000"
    )
        port map (
      I0 => pr_state(2),
      I1 => bt_eq_IBUF,
      I2 => plus_or_sub,
      I3 => plusOp(12),
      I4 => \acc[12]_i_2_n_0\,
      I5 => pr_state(0),
      O => nx_acc(12)
    );
\acc[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7000FFFF70000000"
    )
        port map (
      I0 => plus_or_sub,
      I1 => bt_eq_IBUF,
      I2 => \acc_reg[15]_i_9_n_7\,
      I3 => acc(12),
      I4 => pr_state(2),
      I5 => acc(8),
      O => \acc[12]_i_2_n_0\
    );
\acc[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFF8000"
    )
        port map (
      I0 => pr_state(2),
      I1 => bt_eq_IBUF,
      I2 => plus_or_sub,
      I3 => plusOp(13),
      I4 => \acc[13]_i_2_n_0\,
      I5 => pr_state(0),
      O => nx_acc(13)
    );
\acc[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7000FFFF70000000"
    )
        port map (
      I0 => plus_or_sub,
      I1 => bt_eq_IBUF,
      I2 => \acc_reg[15]_i_9_n_6\,
      I3 => acc(13),
      I4 => pr_state(2),
      I5 => acc(9),
      O => \acc[13]_i_2_n_0\
    );
\acc[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFF8000"
    )
        port map (
      I0 => pr_state(2),
      I1 => bt_eq_IBUF,
      I2 => plus_or_sub,
      I3 => plusOp(14),
      I4 => \acc[14]_i_2_n_0\,
      I5 => pr_state(0),
      O => nx_acc(14)
    );
\acc[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7000FFFF70000000"
    )
        port map (
      I0 => plus_or_sub,
      I1 => bt_eq_IBUF,
      I2 => \acc_reg[15]_i_9_n_5\,
      I3 => acc(14),
      I4 => pr_state(2),
      I5 => acc(10),
      O => \acc[14]_i_2_n_0\
    );
\acc[15]_i_10\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => operand(15),
      O => \acc[15]_i_10_n_0\
    );
\acc[15]_i_11\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => operand(14),
      O => \acc[15]_i_11_n_0\
    );
\acc[15]_i_12\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => operand(13),
      O => \acc[15]_i_12_n_0\
    );
\acc[15]_i_13\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => operand(12),
      O => \acc[15]_i_13_n_0\
    );
\acc[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFF8000"
    )
        port map (
      I0 => pr_state(2),
      I1 => bt_eq_IBUF,
      I2 => plus_or_sub,
      I3 => plusOp(15),
      I4 => \acc[15]_i_4_n_0\,
      I5 => pr_state(0),
      O => nx_acc(15)
    );
\acc[15]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7000FFFF70000000"
    )
        port map (
      I0 => plus_or_sub,
      I1 => bt_eq_IBUF,
      I2 => \acc_reg[15]_i_9_n_4\,
      I3 => acc(15),
      I4 => pr_state(2),
      I5 => acc(11),
      O => \acc[15]_i_4_n_0\
    );
\acc[15]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => acc(15),
      I1 => operand(15),
      O => \acc[15]_i_5_n_0\
    );
\acc[15]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => acc(14),
      I1 => operand(14),
      O => \acc[15]_i_6_n_0\
    );
\acc[15]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => acc(13),
      I1 => operand(13),
      O => \acc[15]_i_7_n_0\
    );
\acc[15]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => acc(12),
      I1 => operand(12),
      O => \acc[15]_i_8_n_0\
    );
\acc[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00BF008000800080"
    )
        port map (
      I0 => plusOp(1),
      I1 => plus_or_sub,
      I2 => bt_eq_IBUF,
      I3 => pr_state(0),
      I4 => \acc_reg[3]_i_3_n_6\,
      I5 => acc(1),
      O => \acc[1]_i_2_n_0\
    );
\acc[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00BF008000800080"
    )
        port map (
      I0 => plusOp(2),
      I1 => plus_or_sub,
      I2 => bt_eq_IBUF,
      I3 => pr_state(0),
      I4 => \acc_reg[3]_i_3_n_5\,
      I5 => acc(2),
      O => \acc[2]_i_2_n_0\
    );
\acc[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00BF008000800080"
    )
        port map (
      I0 => plusOp(3),
      I1 => plus_or_sub,
      I2 => bt_eq_IBUF,
      I3 => pr_state(0),
      I4 => \acc_reg[3]_i_3_n_4\,
      I5 => acc(3),
      O => \acc[3]_i_2_n_0\
    );
\acc[3]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => operand(3),
      O => \acc[3]_i_4_n_0\
    );
\acc[3]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => operand(2),
      O => \acc[3]_i_5_n_0\
    );
\acc[3]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => operand(1),
      O => \acc[3]_i_6_n_0\
    );
\acc[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFF8000"
    )
        port map (
      I0 => pr_state(2),
      I1 => bt_eq_IBUF,
      I2 => plus_or_sub,
      I3 => plusOp(4),
      I4 => \acc[4]_i_2_n_0\,
      I5 => pr_state(0),
      O => nx_acc(4)
    );
\acc[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7000FFFF70000000"
    )
        port map (
      I0 => plus_or_sub,
      I1 => bt_eq_IBUF,
      I2 => \acc_reg[7]_i_9_n_7\,
      I3 => acc(4),
      I4 => pr_state(2),
      I5 => acc(0),
      O => \acc[4]_i_2_n_0\
    );
\acc[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFF8000"
    )
        port map (
      I0 => pr_state(2),
      I1 => bt_eq_IBUF,
      I2 => plus_or_sub,
      I3 => plusOp(5),
      I4 => \acc[5]_i_2_n_0\,
      I5 => pr_state(0),
      O => nx_acc(5)
    );
\acc[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7000FFFF70000000"
    )
        port map (
      I0 => plus_or_sub,
      I1 => bt_eq_IBUF,
      I2 => \acc_reg[7]_i_9_n_6\,
      I3 => acc(5),
      I4 => pr_state(2),
      I5 => acc(1),
      O => \acc[5]_i_2_n_0\
    );
\acc[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFF8000"
    )
        port map (
      I0 => pr_state(2),
      I1 => bt_eq_IBUF,
      I2 => plus_or_sub,
      I3 => plusOp(6),
      I4 => \acc[6]_i_2_n_0\,
      I5 => pr_state(0),
      O => nx_acc(6)
    );
\acc[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7000FFFF70000000"
    )
        port map (
      I0 => plus_or_sub,
      I1 => bt_eq_IBUF,
      I2 => \acc_reg[7]_i_9_n_5\,
      I3 => acc(6),
      I4 => pr_state(2),
      I5 => acc(2),
      O => \acc[6]_i_2_n_0\
    );
\acc[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFF8000"
    )
        port map (
      I0 => pr_state(2),
      I1 => bt_eq_IBUF,
      I2 => plus_or_sub,
      I3 => plusOp(7),
      I4 => \acc[7]_i_3_n_0\,
      I5 => pr_state(0),
      O => nx_acc(7)
    );
\acc[7]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => acc(3),
      I1 => operand(3),
      O => \acc[7]_i_10_n_0\
    );
\acc[7]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => acc(2),
      I1 => operand(2),
      O => \acc[7]_i_11_n_0\
    );
\acc[7]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => acc(1),
      I1 => operand(1),
      O => \acc[7]_i_12_n_0\
    );
\acc[7]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => acc(0),
      I1 => operand(0),
      O => \acc[7]_i_13_n_0\
    );
\acc[7]_i_14\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => operand(7),
      O => \acc[7]_i_14_n_0\
    );
\acc[7]_i_15\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => operand(6),
      O => \acc[7]_i_15_n_0\
    );
\acc[7]_i_16\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => operand(5),
      O => \acc[7]_i_16_n_0\
    );
\acc[7]_i_17\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => operand(4),
      O => \acc[7]_i_17_n_0\
    );
\acc[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7000FFFF70000000"
    )
        port map (
      I0 => plus_or_sub,
      I1 => bt_eq_IBUF,
      I2 => \acc_reg[7]_i_9_n_4\,
      I3 => acc(7),
      I4 => pr_state(2),
      I5 => acc(3),
      O => \acc[7]_i_3_n_0\
    );
\acc[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => acc(7),
      I1 => operand(7),
      O => \acc[7]_i_5_n_0\
    );
\acc[7]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => acc(6),
      I1 => operand(6),
      O => \acc[7]_i_6_n_0\
    );
\acc[7]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => acc(5),
      I1 => operand(5),
      O => \acc[7]_i_7_n_0\
    );
\acc[7]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => acc(4),
      I1 => operand(4),
      O => \acc[7]_i_8_n_0\
    );
\acc[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFF8000"
    )
        port map (
      I0 => pr_state(2),
      I1 => bt_eq_IBUF,
      I2 => plus_or_sub,
      I3 => plusOp(8),
      I4 => \acc[8]_i_2_n_0\,
      I5 => pr_state(0),
      O => nx_acc(8)
    );
\acc[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7000FFFF70000000"
    )
        port map (
      I0 => plus_or_sub,
      I1 => bt_eq_IBUF,
      I2 => \acc_reg[11]_i_8_n_7\,
      I3 => acc(8),
      I4 => pr_state(2),
      I5 => acc(4),
      O => \acc[8]_i_2_n_0\
    );
\acc[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFF8000"
    )
        port map (
      I0 => pr_state(2),
      I1 => bt_eq_IBUF,
      I2 => plus_or_sub,
      I3 => plusOp(9),
      I4 => \acc[9]_i_2_n_0\,
      I5 => pr_state(0),
      O => nx_acc(9)
    );
\acc[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7000FFFF70000000"
    )
        port map (
      I0 => plus_or_sub,
      I1 => bt_eq_IBUF,
      I2 => \acc_reg[11]_i_8_n_6\,
      I3 => acc(9),
      I4 => pr_state(2),
      I5 => acc(5),
      O => \acc[9]_i_2_n_0\
    );
\acc_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sm_clk_BUFG,
      CE => kp1_n_24,
      CLR => bt_clr_IBUF,
      D => nx_acc(0),
      Q => acc(0)
    );
\acc_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sm_clk_BUFG,
      CE => kp1_n_24,
      CLR => bt_clr_IBUF,
      D => nx_acc(10),
      Q => acc(10)
    );
\acc_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sm_clk_BUFG,
      CE => kp1_n_24,
      CLR => bt_clr_IBUF,
      D => nx_acc(11),
      Q => acc(11)
    );
\acc_reg[11]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \acc_reg[7]_i_2_n_0\,
      CO(3) => \acc_reg[11]_i_2_n_0\,
      CO(2 downto 0) => \NLW_acc_reg[11]_i_2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => acc(11 downto 8),
      O(3 downto 0) => plusOp(11 downto 8),
      S(3) => \acc[11]_i_4_n_0\,
      S(2) => \acc[11]_i_5_n_0\,
      S(1) => \acc[11]_i_6_n_0\,
      S(0) => \acc[11]_i_7_n_0\
    );
\acc_reg[11]_i_8\: unisim.vcomponents.CARRY4
     port map (
      CI => \acc_reg[7]_i_9_n_0\,
      CO(3) => \acc_reg[11]_i_8_n_0\,
      CO(2 downto 0) => \NLW_acc_reg[11]_i_8_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \acc_reg[11]_i_8_n_4\,
      O(2) => \acc_reg[11]_i_8_n_5\,
      O(1) => \acc_reg[11]_i_8_n_6\,
      O(0) => \acc_reg[11]_i_8_n_7\,
      S(3) => \acc[11]_i_9_n_0\,
      S(2) => \acc[11]_i_10_n_0\,
      S(1) => \acc[11]_i_11_n_0\,
      S(0) => \acc[11]_i_12_n_0\
    );
\acc_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sm_clk_BUFG,
      CE => kp1_n_24,
      CLR => bt_clr_IBUF,
      D => nx_acc(12),
      Q => acc(12)
    );
\acc_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sm_clk_BUFG,
      CE => kp1_n_24,
      CLR => bt_clr_IBUF,
      D => nx_acc(13),
      Q => acc(13)
    );
\acc_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sm_clk_BUFG,
      CE => kp1_n_24,
      CLR => bt_clr_IBUF,
      D => nx_acc(14),
      Q => acc(14)
    );
\acc_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sm_clk_BUFG,
      CE => kp1_n_24,
      CLR => bt_clr_IBUF,
      D => nx_acc(15),
      Q => acc(15)
    );
\acc_reg[15]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \acc_reg[11]_i_2_n_0\,
      CO(3 downto 0) => \NLW_acc_reg[15]_i_3_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => acc(14 downto 12),
      O(3 downto 0) => plusOp(15 downto 12),
      S(3) => \acc[15]_i_5_n_0\,
      S(2) => \acc[15]_i_6_n_0\,
      S(1) => \acc[15]_i_7_n_0\,
      S(0) => \acc[15]_i_8_n_0\
    );
\acc_reg[15]_i_9\: unisim.vcomponents.CARRY4
     port map (
      CI => \acc_reg[11]_i_8_n_0\,
      CO(3 downto 0) => \NLW_acc_reg[15]_i_9_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \acc_reg[15]_i_9_n_4\,
      O(2) => \acc_reg[15]_i_9_n_5\,
      O(1) => \acc_reg[15]_i_9_n_6\,
      O(0) => \acc_reg[15]_i_9_n_7\,
      S(3) => \acc[15]_i_10_n_0\,
      S(2) => \acc[15]_i_11_n_0\,
      S(1) => \acc[15]_i_12_n_0\,
      S(0) => \acc[15]_i_13_n_0\
    );
\acc_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sm_clk_BUFG,
      CE => kp1_n_24,
      CLR => bt_clr_IBUF,
      D => nx_acc(1),
      Q => acc(1)
    );
\acc_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sm_clk_BUFG,
      CE => kp1_n_24,
      CLR => bt_clr_IBUF,
      D => nx_acc(2),
      Q => acc(2)
    );
\acc_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sm_clk_BUFG,
      CE => kp1_n_24,
      CLR => bt_clr_IBUF,
      D => nx_acc(3),
      Q => acc(3)
    );
\acc_reg[3]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \acc_reg[3]_i_3_n_0\,
      CO(2 downto 0) => \NLW_acc_reg[3]_i_3_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \acc_reg[3]_i_3_n_4\,
      O(2) => \acc_reg[3]_i_3_n_5\,
      O(1) => \acc_reg[3]_i_3_n_6\,
      O(0) => \acc_reg[3]_i_3_n_7\,
      S(3) => \acc[3]_i_4_n_0\,
      S(2) => \acc[3]_i_5_n_0\,
      S(1) => \acc[3]_i_6_n_0\,
      S(0) => operand(0)
    );
\acc_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sm_clk_BUFG,
      CE => kp1_n_24,
      CLR => bt_clr_IBUF,
      D => nx_acc(4),
      Q => acc(4)
    );
\acc_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sm_clk_BUFG,
      CE => kp1_n_24,
      CLR => bt_clr_IBUF,
      D => nx_acc(5),
      Q => acc(5)
    );
\acc_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sm_clk_BUFG,
      CE => kp1_n_24,
      CLR => bt_clr_IBUF,
      D => nx_acc(6),
      Q => acc(6)
    );
\acc_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sm_clk_BUFG,
      CE => kp1_n_24,
      CLR => bt_clr_IBUF,
      D => nx_acc(7),
      Q => acc(7)
    );
\acc_reg[7]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \acc_reg[7]_i_4_n_0\,
      CO(3) => \acc_reg[7]_i_2_n_0\,
      CO(2 downto 0) => \NLW_acc_reg[7]_i_2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => acc(7 downto 4),
      O(3 downto 0) => plusOp(7 downto 4),
      S(3) => \acc[7]_i_5_n_0\,
      S(2) => \acc[7]_i_6_n_0\,
      S(1) => \acc[7]_i_7_n_0\,
      S(0) => \acc[7]_i_8_n_0\
    );
\acc_reg[7]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \acc_reg[7]_i_4_n_0\,
      CO(2 downto 0) => \NLW_acc_reg[7]_i_4_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => acc(3 downto 0),
      O(3 downto 0) => plusOp(3 downto 0),
      S(3) => \acc[7]_i_10_n_0\,
      S(2) => \acc[7]_i_11_n_0\,
      S(1) => \acc[7]_i_12_n_0\,
      S(0) => \acc[7]_i_13_n_0\
    );
\acc_reg[7]_i_9\: unisim.vcomponents.CARRY4
     port map (
      CI => \acc_reg[3]_i_3_n_0\,
      CO(3) => \acc_reg[7]_i_9_n_0\,
      CO(2 downto 0) => \NLW_acc_reg[7]_i_9_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \acc_reg[7]_i_9_n_4\,
      O(2) => \acc_reg[7]_i_9_n_5\,
      O(1) => \acc_reg[7]_i_9_n_6\,
      O(0) => \acc_reg[7]_i_9_n_7\,
      S(3) => \acc[7]_i_14_n_0\,
      S(2) => \acc[7]_i_15_n_0\,
      S(1) => \acc[7]_i_16_n_0\,
      S(0) => \acc[7]_i_17_n_0\
    );
\acc_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sm_clk_BUFG,
      CE => kp1_n_24,
      CLR => bt_clr_IBUF,
      D => nx_acc(8),
      Q => acc(8)
    );
\acc_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sm_clk_BUFG,
      CE => kp1_n_24,
      CLR => bt_clr_IBUF,
      D => nx_acc(9),
      Q => acc(9)
    );
bt_clr_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => bt_clr,
      O => bt_clr_IBUF
    );
bt_eq_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => bt_eq,
      O => bt_eq_IBUF
    );
bt_plus_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => bt_plus,
      O => bt_plus_IBUF
    );
bt_sub_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => bt_sub,
      O => bt_sub_IBUF
    );
clk_50MHz_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => clk_50MHz_IBUF,
      O => clk_50MHz_IBUF_BUFG
    );
clk_50MHz_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => clk_50MHz,
      O => clk_50MHz_IBUF
    );
\cnt[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cnt_reg_n_0_[0]\,
      O => \cnt[0]_i_2_n_0\
    );
\cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_50MHz_IBUF_BUFG,
      CE => '1',
      D => \cnt_reg[0]_i_1_n_7\,
      Q => \cnt_reg_n_0_[0]\,
      R => '0'
    );
\cnt_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \cnt_reg[0]_i_1_n_0\,
      CO(2 downto 0) => \NLW_cnt_reg[0]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \cnt_reg[0]_i_1_n_4\,
      O(2) => \cnt_reg[0]_i_1_n_5\,
      O(1) => \cnt_reg[0]_i_1_n_6\,
      O(0) => \cnt_reg[0]_i_1_n_7\,
      S(3) => \cnt_reg_n_0_[3]\,
      S(2) => \cnt_reg_n_0_[2]\,
      S(1) => \cnt_reg_n_0_[1]\,
      S(0) => \cnt[0]_i_2_n_0\
    );
\cnt_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_50MHz_IBUF_BUFG,
      CE => '1',
      D => \cnt_reg[8]_i_1_n_5\,
      Q => \cnt_reg_n_0_[10]\,
      R => '0'
    );
\cnt_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_50MHz_IBUF_BUFG,
      CE => '1',
      D => \cnt_reg[8]_i_1_n_4\,
      Q => \cnt_reg_n_0_[11]\,
      R => '0'
    );
\cnt_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_50MHz_IBUF_BUFG,
      CE => '1',
      D => \cnt_reg[12]_i_1_n_7\,
      Q => \cnt_reg_n_0_[12]\,
      R => '0'
    );
\cnt_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_reg[8]_i_1_n_0\,
      CO(3) => \cnt_reg[12]_i_1_n_0\,
      CO(2 downto 0) => \NLW_cnt_reg[12]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_reg[12]_i_1_n_4\,
      O(2) => \cnt_reg[12]_i_1_n_5\,
      O(1) => \cnt_reg[12]_i_1_n_6\,
      O(0) => \cnt_reg[12]_i_1_n_7\,
      S(3) => samp_ck,
      S(2) => \cnt_reg_n_0_[14]\,
      S(1) => \cnt_reg_n_0_[13]\,
      S(0) => \cnt_reg_n_0_[12]\
    );
\cnt_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_50MHz_IBUF_BUFG,
      CE => '1',
      D => \cnt_reg[12]_i_1_n_6\,
      Q => \cnt_reg_n_0_[13]\,
      R => '0'
    );
\cnt_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_50MHz_IBUF_BUFG,
      CE => '1',
      D => \cnt_reg[12]_i_1_n_5\,
      Q => \cnt_reg_n_0_[14]\,
      R => '0'
    );
\cnt_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_50MHz_IBUF_BUFG,
      CE => '1',
      D => \cnt_reg[12]_i_1_n_4\,
      Q => samp_ck,
      R => '0'
    );
\cnt_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_50MHz_IBUF_BUFG,
      CE => '1',
      D => \cnt_reg[16]_i_1_n_7\,
      Q => \cnt_reg_n_0_[16]\,
      R => '0'
    );
\cnt_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_reg[12]_i_1_n_0\,
      CO(3) => \cnt_reg[16]_i_1_n_0\,
      CO(2 downto 0) => \NLW_cnt_reg[16]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_reg[16]_i_1_n_4\,
      O(2) => \cnt_reg[16]_i_1_n_5\,
      O(1) => \cnt_reg[16]_i_1_n_6\,
      O(0) => \cnt_reg[16]_i_1_n_7\,
      S(3) => \cnt_reg_n_0_[19]\,
      S(2 downto 1) => dig(1 downto 0),
      S(0) => \cnt_reg_n_0_[16]\
    );
\cnt_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_50MHz_IBUF_BUFG,
      CE => '1',
      D => \cnt_reg[16]_i_1_n_6\,
      Q => dig(0),
      R => '0'
    );
\cnt_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_50MHz_IBUF_BUFG,
      CE => '1',
      D => \cnt_reg[16]_i_1_n_5\,
      Q => dig(1),
      R => '0'
    );
\cnt_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_50MHz_IBUF_BUFG,
      CE => '1',
      D => \cnt_reg[16]_i_1_n_4\,
      Q => \cnt_reg_n_0_[19]\,
      R => '0'
    );
\cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_50MHz_IBUF_BUFG,
      CE => '1',
      D => \cnt_reg[0]_i_1_n_6\,
      Q => \cnt_reg_n_0_[1]\,
      R => '0'
    );
\cnt_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_50MHz_IBUF_BUFG,
      CE => '1',
      D => \cnt_reg[20]_i_1_n_7\,
      Q => sm_clk,
      R => '0'
    );
\cnt_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_reg[16]_i_1_n_0\,
      CO(3 downto 0) => \NLW_cnt_reg[20]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_cnt_reg[20]_i_1_O_UNCONNECTED\(3 downto 1),
      O(0) => \cnt_reg[20]_i_1_n_7\,
      S(3 downto 1) => B"000",
      S(0) => sm_clk_BUFG
    );
\cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_50MHz_IBUF_BUFG,
      CE => '1',
      D => \cnt_reg[0]_i_1_n_5\,
      Q => \cnt_reg_n_0_[2]\,
      R => '0'
    );
\cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_50MHz_IBUF_BUFG,
      CE => '1',
      D => \cnt_reg[0]_i_1_n_4\,
      Q => \cnt_reg_n_0_[3]\,
      R => '0'
    );
\cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_50MHz_IBUF_BUFG,
      CE => '1',
      D => \cnt_reg[4]_i_1_n_7\,
      Q => \cnt_reg_n_0_[4]\,
      R => '0'
    );
\cnt_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_reg[0]_i_1_n_0\,
      CO(3) => \cnt_reg[4]_i_1_n_0\,
      CO(2 downto 0) => \NLW_cnt_reg[4]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_reg[4]_i_1_n_4\,
      O(2) => \cnt_reg[4]_i_1_n_5\,
      O(1) => \cnt_reg[4]_i_1_n_6\,
      O(0) => \cnt_reg[4]_i_1_n_7\,
      S(3) => \cnt_reg_n_0_[7]\,
      S(2) => \cnt_reg_n_0_[6]\,
      S(1) => \cnt_reg_n_0_[5]\,
      S(0) => \cnt_reg_n_0_[4]\
    );
\cnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_50MHz_IBUF_BUFG,
      CE => '1',
      D => \cnt_reg[4]_i_1_n_6\,
      Q => \cnt_reg_n_0_[5]\,
      R => '0'
    );
\cnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_50MHz_IBUF_BUFG,
      CE => '1',
      D => \cnt_reg[4]_i_1_n_5\,
      Q => \cnt_reg_n_0_[6]\,
      R => '0'
    );
\cnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_50MHz_IBUF_BUFG,
      CE => '1',
      D => \cnt_reg[4]_i_1_n_4\,
      Q => \cnt_reg_n_0_[7]\,
      R => '0'
    );
\cnt_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_50MHz_IBUF_BUFG,
      CE => '1',
      D => \cnt_reg[8]_i_1_n_7\,
      Q => \cnt_reg_n_0_[8]\,
      R => '0'
    );
\cnt_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_reg[4]_i_1_n_0\,
      CO(3) => \cnt_reg[8]_i_1_n_0\,
      CO(2 downto 0) => \NLW_cnt_reg[8]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_reg[8]_i_1_n_4\,
      O(2) => \cnt_reg[8]_i_1_n_5\,
      O(1) => \cnt_reg[8]_i_1_n_6\,
      O(0) => \cnt_reg[8]_i_1_n_7\,
      S(3) => \cnt_reg_n_0_[11]\,
      S(2) => \cnt_reg_n_0_[10]\,
      S(1) => \cnt_reg_n_0_[9]\,
      S(0) => \cnt_reg_n_0_[8]\
    );
\cnt_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_50MHz_IBUF_BUFG,
      CE => '1',
      D => \cnt_reg[8]_i_1_n_6\,
      Q => \cnt_reg_n_0_[9]\,
      R => '0'
    );
kp1: entity work.keypad
     port map (
      CLK => samp_ck,
      \CV1_reg[4]_0\(3 downto 0) => KB_row_IBUF(4 downto 1),
      \CV3_reg[3]_0\(3) => kp1_n_4,
      \CV3_reg[3]_0\(2) => kp1_n_5,
      \CV3_reg[3]_0\(1) => kp1_n_6,
      \CV3_reg[3]_0\(0) => kp1_n_7,
      D(3 downto 0) => nx_acc(3 downto 0),
      E(0) => kp1_n_23,
      KB_col_OBUF(4 downto 1) => KB_col_OBUF(4 downto 1),
      Q(2 downto 0) => pr_state(2 downto 0),
      SEG7_anode_OBUF(3 downto 0) => SEG7_anode_OBUF(3 downto 0),
      SEG7_seg_OBUF(6 downto 0) => SEG7_seg_OBUF(6 downto 0),
      \SEG7_seg_OBUF[6]_inst_i_5_0\(15 downto 0) => acc(15 downto 0),
      \SEG7_seg_OBUF[6]_inst_i_5_1\(15 downto 0) => operand(15 downto 0),
      \acc_reg[0]\ => \acc[0]_i_2_n_0\,
      \acc_reg[1]\ => \acc[1]_i_2_n_0\,
      \acc_reg[2]\ => \acc[2]_i_2_n_0\,
      \acc_reg[3]\ => \acc[3]_i_2_n_0\,
      bt_eq_IBUF => bt_eq_IBUF,
      bt_plus_IBUF => bt_plus_IBUF,
      bt_sub_IBUF => bt_sub_IBUF,
      dig(1 downto 0) => dig(1 downto 0),
      \pr_state_reg[0]\ => kp1_n_8,
      \pr_state_reg[1]\(2 downto 0) => nx_state(2 downto 0),
      \pr_state_reg[1]_0\ => \pr_state[1]_i_2_n_0\,
      \pr_state_reg[2]\(0) => kp1_n_24
    );
\operand[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => pr_state(2),
      I1 => operand(6),
      O => nx_operand(10)
    );
\operand[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => pr_state(2),
      I1 => operand(7),
      O => nx_operand(11)
    );
\operand[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => pr_state(2),
      I1 => operand(8),
      O => nx_operand(12)
    );
\operand[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => pr_state(2),
      I1 => operand(9),
      O => nx_operand(13)
    );
\operand[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => pr_state(2),
      I1 => operand(10),
      O => nx_operand(14)
    );
\operand[15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => pr_state(2),
      I1 => operand(11),
      O => nx_operand(15)
    );
\operand[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => pr_state(2),
      I1 => operand(0),
      O => nx_operand(4)
    );
\operand[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => pr_state(2),
      I1 => operand(1),
      O => nx_operand(5)
    );
\operand[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => pr_state(2),
      I1 => operand(2),
      O => nx_operand(6)
    );
\operand[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => pr_state(2),
      I1 => operand(3),
      O => nx_operand(7)
    );
\operand[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => pr_state(2),
      I1 => operand(4),
      O => nx_operand(8)
    );
\operand[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => pr_state(2),
      I1 => operand(5),
      O => nx_operand(9)
    );
\operand_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sm_clk_BUFG,
      CE => kp1_n_23,
      CLR => bt_clr_IBUF,
      D => kp1_n_7,
      Q => operand(0)
    );
\operand_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sm_clk_BUFG,
      CE => kp1_n_23,
      CLR => bt_clr_IBUF,
      D => nx_operand(10),
      Q => operand(10)
    );
\operand_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sm_clk_BUFG,
      CE => kp1_n_23,
      CLR => bt_clr_IBUF,
      D => nx_operand(11),
      Q => operand(11)
    );
\operand_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sm_clk_BUFG,
      CE => kp1_n_23,
      CLR => bt_clr_IBUF,
      D => nx_operand(12),
      Q => operand(12)
    );
\operand_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sm_clk_BUFG,
      CE => kp1_n_23,
      CLR => bt_clr_IBUF,
      D => nx_operand(13),
      Q => operand(13)
    );
\operand_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sm_clk_BUFG,
      CE => kp1_n_23,
      CLR => bt_clr_IBUF,
      D => nx_operand(14),
      Q => operand(14)
    );
\operand_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sm_clk_BUFG,
      CE => kp1_n_23,
      CLR => bt_clr_IBUF,
      D => nx_operand(15),
      Q => operand(15)
    );
\operand_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sm_clk_BUFG,
      CE => kp1_n_23,
      CLR => bt_clr_IBUF,
      D => kp1_n_6,
      Q => operand(1)
    );
\operand_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sm_clk_BUFG,
      CE => kp1_n_23,
      CLR => bt_clr_IBUF,
      D => kp1_n_5,
      Q => operand(2)
    );
\operand_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sm_clk_BUFG,
      CE => kp1_n_23,
      CLR => bt_clr_IBUF,
      D => kp1_n_4,
      Q => operand(3)
    );
\operand_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sm_clk_BUFG,
      CE => kp1_n_23,
      CLR => bt_clr_IBUF,
      D => nx_operand(4),
      Q => operand(4)
    );
\operand_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sm_clk_BUFG,
      CE => kp1_n_23,
      CLR => bt_clr_IBUF,
      D => nx_operand(5),
      Q => operand(5)
    );
\operand_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sm_clk_BUFG,
      CE => kp1_n_23,
      CLR => bt_clr_IBUF,
      D => nx_operand(6),
      Q => operand(6)
    );
\operand_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sm_clk_BUFG,
      CE => kp1_n_23,
      CLR => bt_clr_IBUF,
      D => nx_operand(7),
      Q => operand(7)
    );
\operand_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sm_clk_BUFG,
      CE => kp1_n_23,
      CLR => bt_clr_IBUF,
      D => nx_operand(8),
      Q => operand(8)
    );
\operand_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sm_clk_BUFG,
      CE => kp1_n_23,
      CLR => bt_clr_IBUF,
      D => nx_operand(9),
      Q => operand(9)
    );
plus_or_sub_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => bt_plus_IBUF,
      G => kp1_n_8,
      GE => '1',
      Q => plus_or_sub
    );
\pr_state[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => bt_sub_IBUF,
      I1 => bt_plus_IBUF,
      O => \pr_state[1]_i_2_n_0\
    );
\pr_state_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sm_clk_BUFG,
      CE => '1',
      CLR => bt_clr_IBUF,
      D => nx_state(0),
      Q => pr_state(0)
    );
\pr_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sm_clk_BUFG,
      CE => '1',
      CLR => bt_clr_IBUF,
      D => nx_state(1),
      Q => pr_state(1)
    );
\pr_state_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sm_clk_BUFG,
      CE => '1',
      CLR => bt_clr_IBUF,
      D => nx_state(2),
      Q => pr_state(2)
    );
sm_clk_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => sm_clk,
      O => sm_clk_BUFG
    );
end STRUCTURE;
