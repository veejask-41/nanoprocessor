-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Sun Jun 11 18:09:25 2023
-- Host        : DESKTOP-TAL5MJA running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               C:/Users/Kopimenan/Downloads/Documents/project_1/project_1.sim/sim_1/synth/func/xsim/TB_Add_Sub_Unit_func_synth.vhd
-- Design      : NanoProcessor
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Program_Counter is
  port (
    Zero_OBUF : out STD_LOGIC;
    Overflow_OBUF : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \Q_reg[0]_0\ : out STD_LOGIC;
    \Q_reg[0]_1\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \Q_reg[2]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \Q_reg[2]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \Q_reg[2]_2\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \Q_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \Q_reg[2]_3\ : in STD_LOGIC;
    Overflow_OBUF_inst_i_1_0 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    Overflow_OBUF_inst_i_1_1 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    Reset_IBUF : in STD_LOGIC;
    CLK : in STD_LOGIC
  );
end Program_Counter;

architecture STRUCTURE of Program_Counter is
  signal Ins_Bus : STD_LOGIC_VECTOR ( 11 downto 10 );
  signal Mem_Bus : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Overflow_OBUF_inst_i_10_n_0 : STD_LOGIC;
  signal Overflow_OBUF_inst_i_12_n_0 : STD_LOGIC;
  signal Overflow_OBUF_inst_i_13_n_0 : STD_LOGIC;
  signal Overflow_OBUF_inst_i_14_n_0 : STD_LOGIC;
  signal Overflow_OBUF_inst_i_2_n_0 : STD_LOGIC;
  signal Overflow_OBUF_inst_i_3_n_0 : STD_LOGIC;
  signal Overflow_OBUF_inst_i_4_n_0 : STD_LOGIC;
  signal Overflow_OBUF_inst_i_5_n_0 : STD_LOGIC;
  signal Overflow_OBUF_inst_i_6_n_0 : STD_LOGIC;
  signal Overflow_OBUF_inst_i_7_n_0 : STD_LOGIC;
  signal Overflow_OBUF_inst_i_8_n_0 : STD_LOGIC;
  signal Overflow_OBUF_inst_i_9_n_0 : STD_LOGIC;
  signal \Q[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \Q[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \Q[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \Q[2]_i_2_n_0\ : STD_LOGIC;
  signal Zero_OBUF_inst_i_2_n_0 : STD_LOGIC;
  signal Zero_OBUF_inst_i_3_n_0 : STD_LOGIC;
  signal Zero_OBUF_inst_i_4_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of Overflow_OBUF_inst_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of Overflow_OBUF_inst_i_12 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of Overflow_OBUF_inst_i_13 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of Overflow_OBUF_inst_i_14 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of Overflow_OBUF_inst_i_15 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of Overflow_OBUF_inst_i_16 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of Overflow_OBUF_inst_i_2 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of Overflow_OBUF_inst_i_4 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of Overflow_OBUF_inst_i_6 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of Overflow_OBUF_inst_i_7 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of Overflow_OBUF_inst_i_8 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of Overflow_OBUF_inst_i_9 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \Q[0]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \Q[0]_i_1__0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \Q[1]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \Q[1]_i_1__0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \Q[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \Q[2]_i_1__0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \Q[2]_i_3\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \Q[3]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \Q[3]_i_1__0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \Q[3]_i_1__1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \Q[3]_i_1__2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of Zero_OBUF_inst_i_2 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of Zero_OBUF_inst_i_3 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of Zero_OBUF_inst_i_4 : label is "soft_lutpair6";
begin
Overflow_OBUF_inst_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2BBB222B"
    )
        port map (
      I0 => Overflow_OBUF_inst_i_2_n_0,
      I1 => Overflow_OBUF_inst_i_3_n_0,
      I2 => Overflow_OBUF_inst_i_4_n_0,
      I3 => Overflow_OBUF_inst_i_5_n_0,
      I4 => Overflow_OBUF_inst_i_6_n_0,
      O => Overflow_OBUF
    );
Overflow_OBUF_inst_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"20C0200020F02030"
    )
        port map (
      I0 => Overflow_OBUF_inst_i_1_0(0),
      I1 => Mem_Bus(0),
      I2 => Mem_Bus(2),
      I3 => Mem_Bus(1),
      I4 => Overflow_OBUF_inst_i_1_1(0),
      I5 => Overflow_OBUF_inst_i_14_n_0,
      O => Overflow_OBUF_inst_i_10_n_0
    );
Overflow_OBUF_inst_i_12: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B3"
    )
        port map (
      I0 => Mem_Bus(0),
      I1 => Mem_Bus(2),
      I2 => Mem_Bus(1),
      O => Overflow_OBUF_inst_i_12_n_0
    );
Overflow_OBUF_inst_i_13: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0888"
    )
        port map (
      I0 => Mem_Bus(2),
      I1 => \Q_reg[3]\(0),
      I2 => Mem_Bus(0),
      I3 => Mem_Bus(1),
      O => Overflow_OBUF_inst_i_13_n_0
    );
Overflow_OBUF_inst_i_14: unisim.vcomponents.LUT5
    generic map(
      INIT => X"551555D5"
    )
        port map (
      I0 => Q(0),
      I1 => Mem_Bus(0),
      I2 => Mem_Bus(2),
      I3 => Mem_Bus(1),
      I4 => \Q_reg[3]\(1),
      O => Overflow_OBUF_inst_i_14_n_0
    );
Overflow_OBUF_inst_i_15: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => Mem_Bus(0),
      I1 => Mem_Bus(2),
      I2 => Mem_Bus(1),
      O => \Q_reg[0]_1\
    );
Overflow_OBUF_inst_i_16: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F7"
    )
        port map (
      I0 => Mem_Bus(0),
      I1 => Mem_Bus(2),
      I2 => Mem_Bus(1),
      O => \Q_reg[0]_0\
    );
Overflow_OBUF_inst_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0888"
    )
        port map (
      I0 => Mem_Bus(2),
      I1 => \Q_reg[3]\(3),
      I2 => Mem_Bus(0),
      I3 => Mem_Bus(1),
      O => Overflow_OBUF_inst_i_2_n_0
    );
Overflow_OBUF_inst_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DF3FDFFFDF0FDFCF"
    )
        port map (
      I0 => Overflow_OBUF_inst_i_1_0(2),
      I1 => Mem_Bus(0),
      I2 => Mem_Bus(2),
      I3 => Mem_Bus(1),
      I4 => Overflow_OBUF_inst_i_1_1(2),
      I5 => Overflow_OBUF_inst_i_7_n_0,
      O => Overflow_OBUF_inst_i_3_n_0
    );
Overflow_OBUF_inst_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F777"
    )
        port map (
      I0 => Mem_Bus(2),
      I1 => \Q_reg[3]\(2),
      I2 => Mem_Bus(0),
      I3 => Mem_Bus(1),
      O => Overflow_OBUF_inst_i_4_n_0
    );
Overflow_OBUF_inst_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DF3FDFFFDF0FDFCF"
    )
        port map (
      I0 => Overflow_OBUF_inst_i_1_0(1),
      I1 => Mem_Bus(0),
      I2 => Mem_Bus(2),
      I3 => Mem_Bus(1),
      I4 => Overflow_OBUF_inst_i_1_1(1),
      I5 => Overflow_OBUF_inst_i_8_n_0,
      O => Overflow_OBUF_inst_i_5_n_0
    );
Overflow_OBUF_inst_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"888E8888"
    )
        port map (
      I0 => Overflow_OBUF_inst_i_9_n_0,
      I1 => Overflow_OBUF_inst_i_10_n_0,
      I2 => \Q_reg[2]_3\,
      I3 => Overflow_OBUF_inst_i_12_n_0,
      I4 => Overflow_OBUF_inst_i_13_n_0,
      O => Overflow_OBUF_inst_i_6_n_0
    );
Overflow_OBUF_inst_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"551555D5"
    )
        port map (
      I0 => Q(2),
      I1 => Mem_Bus(0),
      I2 => Mem_Bus(2),
      I3 => Mem_Bus(1),
      I4 => \Q_reg[3]\(3),
      O => Overflow_OBUF_inst_i_7_n_0
    );
Overflow_OBUF_inst_i_8: unisim.vcomponents.LUT5
    generic map(
      INIT => X"551555D5"
    )
        port map (
      I0 => Q(1),
      I1 => Mem_Bus(0),
      I2 => Mem_Bus(2),
      I3 => Mem_Bus(1),
      I4 => \Q_reg[3]\(2),
      O => Overflow_OBUF_inst_i_8_n_0
    );
Overflow_OBUF_inst_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A00"
    )
        port map (
      I0 => Mem_Bus(2),
      I1 => Mem_Bus(1),
      I2 => Mem_Bus(0),
      I3 => \Q_reg[3]\(1),
      O => Overflow_OBUF_inst_i_9_n_0
    );
\Q[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AE"
    )
        port map (
      I0 => Zero_OBUF_inst_i_3_n_0,
      I1 => Mem_Bus(0),
      I2 => Mem_Bus(2),
      O => D(0)
    );
\Q[0]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55004055"
    )
        port map (
      I0 => Reset_IBUF,
      I1 => Mem_Bus(2),
      I2 => Mem_Bus(1),
      I3 => Mem_Bus(0),
      I4 => \Q[2]_i_2_n_0\,
      O => \Q[0]_i_1__0_n_0\
    );
\Q[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AE"
    )
        port map (
      I0 => Zero_OBUF_inst_i_2_n_0,
      I1 => Mem_Bus(1),
      I2 => Mem_Bus(2),
      O => D(1)
    );
\Q[1]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"50504550"
    )
        port map (
      I0 => Reset_IBUF,
      I1 => Mem_Bus(2),
      I2 => Mem_Bus(1),
      I3 => Mem_Bus(0),
      I4 => \Q[2]_i_2_n_0\,
      O => \Q[1]_i_1__0_n_0\
    );
\Q[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => Overflow_OBUF_inst_i_4_n_0,
      I1 => Overflow_OBUF_inst_i_5_n_0,
      I2 => Overflow_OBUF_inst_i_6_n_0,
      O => D(2)
    );
\Q[2]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44445444"
    )
        port map (
      I0 => Reset_IBUF,
      I1 => Mem_Bus(2),
      I2 => Mem_Bus(1),
      I3 => Mem_Bus(0),
      I4 => \Q[2]_i_2_n_0\,
      O => \Q[2]_i_1__0_n_0\
    );
\Q[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => Overflow_OBUF_inst_i_9_n_0,
      I1 => Overflow_OBUF_inst_i_4_n_0,
      I2 => Ins_Bus(10),
      I3 => Ins_Bus(11),
      I4 => Overflow_OBUF_inst_i_13_n_0,
      O => \Q[2]_i_2_n_0\
    );
\Q[2]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => Mem_Bus(1),
      I1 => Mem_Bus(2),
      I2 => Mem_Bus(0),
      O => Ins_Bus(10)
    );
\Q[2]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D5"
    )
        port map (
      I0 => Mem_Bus(2),
      I1 => Mem_Bus(0),
      I2 => Mem_Bus(1),
      O => Ins_Bus(11)
    );
\Q[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2B"
    )
        port map (
      I0 => Mem_Bus(2),
      I1 => Mem_Bus(0),
      I2 => Mem_Bus(1),
      O => E(0)
    );
\Q[3]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => Mem_Bus(2),
      I1 => Mem_Bus(0),
      I2 => Mem_Bus(1),
      O => \Q_reg[2]_0\(0)
    );
\Q[3]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => Mem_Bus(2),
      I1 => Mem_Bus(0),
      I2 => Mem_Bus(1),
      O => \Q_reg[2]_1\(0)
    );
\Q[3]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => Mem_Bus(2),
      I1 => Mem_Bus(0),
      I2 => Mem_Bus(1),
      O => \Q_reg[2]_2\(0)
    );
\Q[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2BD4"
    )
        port map (
      I0 => Overflow_OBUF_inst_i_6_n_0,
      I1 => Overflow_OBUF_inst_i_5_n_0,
      I2 => Overflow_OBUF_inst_i_4_n_0,
      I3 => Zero_OBUF_inst_i_4_n_0,
      O => D(3)
    );
\Q_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \Q[0]_i_1__0_n_0\,
      Q => Mem_Bus(0),
      R => '0'
    );
\Q_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \Q[1]_i_1__0_n_0\,
      Q => Mem_Bus(1),
      R => '0'
    );
\Q_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \Q[2]_i_1__0_n_0\,
      Q => Mem_Bus(2),
      R => '0'
    );
Zero_OBUF_inst_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001010010000001"
    )
        port map (
      I0 => Zero_OBUF_inst_i_2_n_0,
      I1 => Zero_OBUF_inst_i_3_n_0,
      I2 => Zero_OBUF_inst_i_4_n_0,
      I3 => Overflow_OBUF_inst_i_4_n_0,
      I4 => Overflow_OBUF_inst_i_5_n_0,
      I5 => Overflow_OBUF_inst_i_6_n_0,
      O => Zero_OBUF
    );
Zero_OBUF_inst_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02FDFD02"
    )
        port map (
      I0 => Overflow_OBUF_inst_i_13_n_0,
      I1 => Overflow_OBUF_inst_i_12_n_0,
      I2 => \Q_reg[2]_3\,
      I3 => Overflow_OBUF_inst_i_10_n_0,
      I4 => Overflow_OBUF_inst_i_9_n_0,
      O => Zero_OBUF_inst_i_2_n_0
    );
Zero_OBUF_inst_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00B34C"
    )
        port map (
      I0 => Mem_Bus(0),
      I1 => Mem_Bus(2),
      I2 => Mem_Bus(1),
      I3 => Overflow_OBUF_inst_i_13_n_0,
      I4 => \Q_reg[2]_3\,
      O => Zero_OBUF_inst_i_3_n_0
    );
Zero_OBUF_inst_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7770888"
    )
        port map (
      I0 => Mem_Bus(2),
      I1 => \Q_reg[3]\(3),
      I2 => Mem_Bus(1),
      I3 => Mem_Bus(0),
      I4 => Overflow_OBUF_inst_i_3_n_0,
      O => Zero_OBUF_inst_i_4_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Reg is
  port (
    \Q_reg[0]_0\ : out STD_LOGIC;
    \Q_reg[3]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    Zero_OBUF_inst_i_3 : in STD_LOGIC;
    Zero_OBUF_inst_i_3_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Zero_OBUF_inst_i_3_1 : in STD_LOGIC;
    Zero_OBUF_inst_i_3_2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    \Q_reg[3]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 3 downto 0 );
    CLK : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end Reg;

architecture STRUCTURE of Reg is
  signal \Q_reg_n_0_[0]\ : STD_LOGIC;
begin
Overflow_OBUF_inst_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \Q_reg_n_0_[0]\,
      I1 => Q(0),
      I2 => Zero_OBUF_inst_i_3,
      I3 => Zero_OBUF_inst_i_3_0(0),
      I4 => Zero_OBUF_inst_i_3_1,
      I5 => Zero_OBUF_inst_i_3_2(0),
      O => \Q_reg[0]_0\
    );
\Q_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \Q_reg[3]_1\(0),
      CLR => AR(0),
      D => D(0),
      Q => \Q_reg_n_0_[0]\
    );
\Q_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \Q_reg[3]_1\(0),
      CLR => AR(0),
      D => D(1),
      Q => \Q_reg[3]_0\(0)
    );
\Q_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \Q_reg[3]_1\(0),
      CLR => AR(0),
      D => D(2),
      Q => \Q_reg[3]_0\(1)
    );
\Q_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \Q_reg[3]_1\(0),
      CLR => AR(0),
      D => D(3),
      Q => \Q_reg[3]_0\(2)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Reg_0 is
  port (
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \Q_reg[3]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 3 downto 0 );
    CLK : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Reg_0 : entity is "Reg";
end Reg_0;

architecture STRUCTURE of Reg_0 is
begin
\Q_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \Q_reg[3]_0\(0),
      CLR => AR(0),
      D => D(0),
      Q => Q(0)
    );
\Q_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \Q_reg[3]_0\(0),
      CLR => AR(0),
      D => D(1),
      Q => Q(1)
    );
\Q_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \Q_reg[3]_0\(0),
      CLR => AR(0),
      D => D(2),
      Q => Q(2)
    );
\Q_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \Q_reg[3]_0\(0),
      CLR => AR(0),
      D => D(3),
      Q => Q(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Reg_1 is
  port (
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \Q_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 3 downto 0 );
    CLK : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Reg_1 : entity is "Reg";
end Reg_1;

architecture STRUCTURE of Reg_1 is
begin
\Q_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \Q_reg[0]_0\(0),
      CLR => AR(0),
      D => D(0),
      Q => Q(0)
    );
\Q_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \Q_reg[0]_0\(0),
      CLR => AR(0),
      D => D(1),
      Q => Q(1)
    );
\Q_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \Q_reg[0]_0\(0),
      CLR => AR(0),
      D => D(2),
      Q => Q(2)
    );
\Q_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \Q_reg[0]_0\(0),
      CLR => AR(0),
      D => D(3),
      Q => Q(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Reg_2 is
  port (
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    seg7_out_OBUF : out STD_LOGIC_VECTOR ( 6 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 3 downto 0 );
    CLK : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Reg_2 : entity is "Reg";
end Reg_2;

architecture STRUCTURE of Reg_2 is
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \seg7_out_OBUF[0]_inst_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \seg7_out_OBUF[1]_inst_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \seg7_out_OBUF[2]_inst_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \seg7_out_OBUF[3]_inst_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \seg7_out_OBUF[4]_inst_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \seg7_out_OBUF[5]_inst_i_1\ : label is "soft_lutpair15";
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
\Q_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(0),
      Q => \^q\(0)
    );
\Q_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(1),
      Q => \^q\(1)
    );
\Q_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(2),
      Q => \^q\(2)
    );
\Q_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(3),
      Q => \^q\(3)
    );
\seg7_out_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4025"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(1),
      O => seg7_out_OBUF(0)
    );
\seg7_out_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5190"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => \^q\(1),
      O => seg7_out_OBUF(1)
    );
\seg7_out_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5710"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => \^q\(0),
      O => seg7_out_OBUF(2)
    );
\seg7_out_OBUF[3]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C214"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => \^q\(1),
      O => seg7_out_OBUF(3)
    );
\seg7_out_OBUF[4]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A210"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(2),
      O => seg7_out_OBUF(4)
    );
\seg7_out_OBUF[5]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AC48"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => \^q\(1),
      O => seg7_out_OBUF(5)
    );
\seg7_out_OBUF[6]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2094"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => \^q\(1),
      O => seg7_out_OBUF(6)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Slow_Clk is
  port (
    CLK : out STD_LOGIC;
    Clk_IBUF_BUFG : in STD_LOGIC
  );
end Slow_Clk;

architecture STRUCTURE of Slow_Clk is
  signal \^clk\ : STD_LOGIC;
  signal Clk_out_i_1_n_0 : STD_LOGIC;
  signal clk_status : STD_LOGIC;
  signal clk_status_0 : STD_LOGIC;
  signal clk_status_i_1_n_0 : STD_LOGIC;
  signal count : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \count[31]_i_3_n_0\ : STD_LOGIC;
  signal \count[31]_i_4_n_0\ : STD_LOGIC;
  signal \count[31]_i_5_n_0\ : STD_LOGIC;
  signal \count[31]_i_6_n_0\ : STD_LOGIC;
  signal \count[31]_i_7_n_0\ : STD_LOGIC;
  signal \count[31]_i_8_n_0\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[28]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[31]_i_2_n_2\ : STD_LOGIC;
  signal \count_reg[31]_i_2_n_3\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_count_reg[31]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_count_reg[31]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of Clk_out_i_1 : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of clk_status_i_1 : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \count[0]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \count[31]_i_3\ : label is "soft_lutpair17";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \count_reg[12]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \count_reg[16]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \count_reg[20]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \count_reg[24]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \count_reg[28]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \count_reg[31]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \count_reg[4]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \count_reg[8]_i_1\ : label is 35;
begin
  CLK <= \^clk\;
Clk_out_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clk_status,
      I1 => clk_status_0,
      I2 => \^clk\,
      O => Clk_out_i_1_n_0
    );
Clk_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => '1',
      D => Clk_out_i_1_n_0,
      Q => \^clk\,
      R => '0'
    );
clk_status_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => clk_status_0,
      I1 => clk_status,
      O => clk_status_i_1_n_0
    );
clk_status_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => '1',
      D => clk_status_i_1_n_0,
      Q => clk_status,
      R => '0'
    );
\count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count(0),
      O => p_1_in(0)
    );
\count[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \count[31]_i_3_n_0\,
      I1 => \count[31]_i_4_n_0\,
      I2 => \count[31]_i_5_n_0\,
      I3 => \count[31]_i_6_n_0\,
      I4 => \count[31]_i_7_n_0\,
      I5 => \count[31]_i_8_n_0\,
      O => clk_status_0
    );
\count[31]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count(0),
      I1 => count(1),
      O => \count[31]_i_3_n_0\
    );
\count[31]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => count(4),
      I1 => count(5),
      I2 => count(2),
      I3 => count(3),
      I4 => count(7),
      I5 => count(6),
      O => \count[31]_i_4_n_0\
    );
\count[31]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => count(10),
      I1 => count(11),
      I2 => count(8),
      I3 => count(9),
      I4 => count(13),
      I5 => count(12),
      O => \count[31]_i_5_n_0\
    );
\count[31]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => count(16),
      I1 => count(17),
      I2 => count(14),
      I3 => count(15),
      I4 => count(19),
      I5 => count(18),
      O => \count[31]_i_6_n_0\
    );
\count[31]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => count(22),
      I1 => count(23),
      I2 => count(20),
      I3 => count(21),
      I4 => count(25),
      I5 => count(24),
      O => \count[31]_i_7_n_0\
    );
\count[31]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => count(28),
      I1 => count(29),
      I2 => count(26),
      I3 => count(27),
      I4 => count(31),
      I5 => count(30),
      O => \count[31]_i_8_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => '1',
      D => p_1_in(0),
      Q => count(0),
      S => clk_status_0
    );
\count_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => '1',
      D => p_1_in(10),
      Q => count(10),
      R => clk_status_0
    );
\count_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => '1',
      D => p_1_in(11),
      Q => count(11),
      R => clk_status_0
    );
\count_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => '1',
      D => p_1_in(12),
      Q => count(12),
      R => clk_status_0
    );
\count_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[8]_i_1_n_0\,
      CO(3) => \count_reg[12]_i_1_n_0\,
      CO(2) => \count_reg[12]_i_1_n_1\,
      CO(1) => \count_reg[12]_i_1_n_2\,
      CO(0) => \count_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_1_in(12 downto 9),
      S(3 downto 0) => count(12 downto 9)
    );
\count_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => '1',
      D => p_1_in(13),
      Q => count(13),
      R => clk_status_0
    );
\count_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => '1',
      D => p_1_in(14),
      Q => count(14),
      R => clk_status_0
    );
\count_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => '1',
      D => p_1_in(15),
      Q => count(15),
      R => clk_status_0
    );
\count_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => '1',
      D => p_1_in(16),
      Q => count(16),
      R => clk_status_0
    );
\count_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[12]_i_1_n_0\,
      CO(3) => \count_reg[16]_i_1_n_0\,
      CO(2) => \count_reg[16]_i_1_n_1\,
      CO(1) => \count_reg[16]_i_1_n_2\,
      CO(0) => \count_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_1_in(16 downto 13),
      S(3 downto 0) => count(16 downto 13)
    );
\count_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => '1',
      D => p_1_in(17),
      Q => count(17),
      R => clk_status_0
    );
\count_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => '1',
      D => p_1_in(18),
      Q => count(18),
      R => clk_status_0
    );
\count_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => '1',
      D => p_1_in(19),
      Q => count(19),
      R => clk_status_0
    );
\count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => '1',
      D => p_1_in(1),
      Q => count(1),
      R => clk_status_0
    );
\count_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => '1',
      D => p_1_in(20),
      Q => count(20),
      R => clk_status_0
    );
\count_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[16]_i_1_n_0\,
      CO(3) => \count_reg[20]_i_1_n_0\,
      CO(2) => \count_reg[20]_i_1_n_1\,
      CO(1) => \count_reg[20]_i_1_n_2\,
      CO(0) => \count_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_1_in(20 downto 17),
      S(3 downto 0) => count(20 downto 17)
    );
\count_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => '1',
      D => p_1_in(21),
      Q => count(21),
      R => clk_status_0
    );
\count_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => '1',
      D => p_1_in(22),
      Q => count(22),
      R => clk_status_0
    );
\count_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => '1',
      D => p_1_in(23),
      Q => count(23),
      R => clk_status_0
    );
\count_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => '1',
      D => p_1_in(24),
      Q => count(24),
      R => clk_status_0
    );
\count_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[20]_i_1_n_0\,
      CO(3) => \count_reg[24]_i_1_n_0\,
      CO(2) => \count_reg[24]_i_1_n_1\,
      CO(1) => \count_reg[24]_i_1_n_2\,
      CO(0) => \count_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_1_in(24 downto 21),
      S(3 downto 0) => count(24 downto 21)
    );
\count_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => '1',
      D => p_1_in(25),
      Q => count(25),
      R => clk_status_0
    );
\count_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => '1',
      D => p_1_in(26),
      Q => count(26),
      R => clk_status_0
    );
\count_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => '1',
      D => p_1_in(27),
      Q => count(27),
      R => clk_status_0
    );
\count_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => '1',
      D => p_1_in(28),
      Q => count(28),
      R => clk_status_0
    );
\count_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[24]_i_1_n_0\,
      CO(3) => \count_reg[28]_i_1_n_0\,
      CO(2) => \count_reg[28]_i_1_n_1\,
      CO(1) => \count_reg[28]_i_1_n_2\,
      CO(0) => \count_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_1_in(28 downto 25),
      S(3 downto 0) => count(28 downto 25)
    );
\count_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => '1',
      D => p_1_in(29),
      Q => count(29),
      R => clk_status_0
    );
\count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => '1',
      D => p_1_in(2),
      Q => count(2),
      R => clk_status_0
    );
\count_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => '1',
      D => p_1_in(30),
      Q => count(30),
      R => clk_status_0
    );
\count_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => '1',
      D => p_1_in(31),
      Q => count(31),
      R => clk_status_0
    );
\count_reg[31]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[28]_i_1_n_0\,
      CO(3 downto 2) => \NLW_count_reg[31]_i_2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \count_reg[31]_i_2_n_2\,
      CO(0) => \count_reg[31]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_count_reg[31]_i_2_O_UNCONNECTED\(3),
      O(2 downto 0) => p_1_in(31 downto 29),
      S(3) => '0',
      S(2 downto 0) => count(31 downto 29)
    );
\count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => '1',
      D => p_1_in(3),
      Q => count(3),
      R => clk_status_0
    );
\count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => '1',
      D => p_1_in(4),
      Q => count(4),
      R => clk_status_0
    );
\count_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \count_reg[4]_i_1_n_0\,
      CO(2) => \count_reg[4]_i_1_n_1\,
      CO(1) => \count_reg[4]_i_1_n_2\,
      CO(0) => \count_reg[4]_i_1_n_3\,
      CYINIT => count(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_1_in(4 downto 1),
      S(3 downto 0) => count(4 downto 1)
    );
\count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => '1',
      D => p_1_in(5),
      Q => count(5),
      R => clk_status_0
    );
\count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => '1',
      D => p_1_in(6),
      Q => count(6),
      R => clk_status_0
    );
\count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => '1',
      D => p_1_in(7),
      Q => count(7),
      R => clk_status_0
    );
\count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => '1',
      D => p_1_in(8),
      Q => count(8),
      R => clk_status_0
    );
\count_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[4]_i_1_n_0\,
      CO(3) => \count_reg[8]_i_1_n_0\,
      CO(2) => \count_reg[8]_i_1_n_1\,
      CO(1) => \count_reg[8]_i_1_n_2\,
      CO(0) => \count_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_1_in(8 downto 5),
      S(3 downto 0) => count(8 downto 5)
    );
\count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => '1',
      D => p_1_in(9),
      Q => count(9),
      R => clk_status_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Reg_Bank is
  port (
    \Q_reg[0]\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \Q_reg[3]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \Q_reg[3]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \Q_reg[3]_1\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    seg7_out_OBUF : out STD_LOGIC_VECTOR ( 6 downto 0 );
    Zero_OBUF_inst_i_3 : in STD_LOGIC;
    Zero_OBUF_inst_i_3_0 : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 3 downto 0 );
    CLK : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \Q_reg[3]_2\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \Q_reg[3]_3\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \Q_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end Reg_Bank;

architecture STRUCTURE of Reg_Bank is
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal R5_n_3 : STD_LOGIC;
  signal R6_n_3 : STD_LOGIC;
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
R4: entity work.Reg
     port map (
      AR(0) => AR(0),
      CLK => CLK,
      D(3 downto 0) => D(3 downto 0),
      Q(0) => R5_n_3,
      \Q_reg[0]_0\ => \Q_reg[0]\,
      \Q_reg[3]_0\(2 downto 0) => \Q_reg[3]\(2 downto 0),
      \Q_reg[3]_1\(0) => \Q_reg[3]_2\(0),
      Zero_OBUF_inst_i_3 => Zero_OBUF_inst_i_3,
      Zero_OBUF_inst_i_3_0(0) => R6_n_3,
      Zero_OBUF_inst_i_3_1 => Zero_OBUF_inst_i_3_0,
      Zero_OBUF_inst_i_3_2(0) => \^q\(0)
    );
R5: entity work.Reg_0
     port map (
      AR(0) => AR(0),
      CLK => CLK,
      D(3 downto 0) => D(3 downto 0),
      Q(3 downto 1) => \Q_reg[3]_0\(2 downto 0),
      Q(0) => R5_n_3,
      \Q_reg[3]_0\(0) => \Q_reg[3]_3\(0)
    );
R6: entity work.Reg_1
     port map (
      AR(0) => AR(0),
      CLK => CLK,
      D(3 downto 0) => D(3 downto 0),
      Q(3 downto 1) => \Q_reg[3]_1\(2 downto 0),
      Q(0) => R6_n_3,
      \Q_reg[0]_0\(0) => \Q_reg[0]_0\(0)
    );
R7: entity work.Reg_2
     port map (
      AR(0) => AR(0),
      CLK => CLK,
      D(3 downto 0) => D(3 downto 0),
      E(0) => E(0),
      Q(3 downto 0) => \^q\(3 downto 0),
      seg7_out_OBUF(6 downto 0) => seg7_out_OBUF(6 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity NanoProcessor is
  port (
    Clk : in STD_LOGIC;
    Reset : in STD_LOGIC;
    Overflow : out STD_LOGIC;
    Zero : out STD_LOGIC;
    R7 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    seg7_out : out STD_LOGIC_VECTOR ( 6 downto 0 );
    anode : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of NanoProcessor : entity is true;
end NanoProcessor;

architecture STRUCTURE of NanoProcessor is
  signal Clk_IBUF : STD_LOGIC;
  signal Clk_IBUF_BUFG : STD_LOGIC;
  signal Data_Mux_to_Reg_Bank : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Overflow_OBUF : STD_LOGIC;
  signal Program_Counter_0_n_10 : STD_LOGIC;
  signal Program_Counter_0_n_11 : STD_LOGIC;
  signal Program_Counter_0_n_6 : STD_LOGIC;
  signal Program_Counter_0_n_7 : STD_LOGIC;
  signal Program_Counter_0_n_8 : STD_LOGIC;
  signal Program_Counter_0_n_9 : STD_LOGIC;
  signal R7_OBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Reg_Bank_0_n_0 : STD_LOGIC;
  signal Reg_Bank_0_n_10 : STD_LOGIC;
  signal Reg_Bank_0_n_11 : STD_LOGIC;
  signal Reg_Bank_0_n_12 : STD_LOGIC;
  signal Reg_Bank_0_n_13 : STD_LOGIC;
  signal Reg_Bank_0_n_5 : STD_LOGIC;
  signal Reg_Bank_0_n_6 : STD_LOGIC;
  signal Reg_Bank_0_n_7 : STD_LOGIC;
  signal Reg_Bank_0_n_8 : STD_LOGIC;
  signal Reg_Bank_0_n_9 : STD_LOGIC;
  signal Reset_IBUF : STD_LOGIC;
  signal Slow_Clk_0_n_0 : STD_LOGIC;
  signal Zero_OBUF : STD_LOGIC;
  signal seg7_out_OBUF : STD_LOGIC_VECTOR ( 6 downto 0 );
begin
Clk_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => Clk_IBUF,
      O => Clk_IBUF_BUFG
    );
Clk_IBUF_inst: unisim.vcomponents.IBUF
    generic map(
      CCIO_EN => "TRUE"
    )
        port map (
      I => Clk,
      O => Clk_IBUF
    );
Overflow_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => Overflow_OBUF,
      O => Overflow
    );
Program_Counter_0: entity work.Program_Counter
     port map (
      CLK => Slow_Clk_0_n_0,
      D(3 downto 0) => Data_Mux_to_Reg_Bank(3 downto 0),
      E(0) => Program_Counter_0_n_8,
      Overflow_OBUF => Overflow_OBUF,
      Overflow_OBUF_inst_i_1_0(2) => Reg_Bank_0_n_5,
      Overflow_OBUF_inst_i_1_0(1) => Reg_Bank_0_n_6,
      Overflow_OBUF_inst_i_1_0(0) => Reg_Bank_0_n_7,
      Overflow_OBUF_inst_i_1_1(2) => Reg_Bank_0_n_8,
      Overflow_OBUF_inst_i_1_1(1) => Reg_Bank_0_n_9,
      Overflow_OBUF_inst_i_1_1(0) => Reg_Bank_0_n_10,
      Q(2) => Reg_Bank_0_n_11,
      Q(1) => Reg_Bank_0_n_12,
      Q(0) => Reg_Bank_0_n_13,
      \Q_reg[0]_0\ => Program_Counter_0_n_6,
      \Q_reg[0]_1\ => Program_Counter_0_n_7,
      \Q_reg[2]_0\(0) => Program_Counter_0_n_9,
      \Q_reg[2]_1\(0) => Program_Counter_0_n_10,
      \Q_reg[2]_2\(0) => Program_Counter_0_n_11,
      \Q_reg[2]_3\ => Reg_Bank_0_n_0,
      \Q_reg[3]\(3 downto 0) => R7_OBUF(3 downto 0),
      Reset_IBUF => Reset_IBUF,
      Zero_OBUF => Zero_OBUF
    );
\R7_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => R7_OBUF(0),
      O => R7(0)
    );
\R7_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => R7_OBUF(1),
      O => R7(1)
    );
\R7_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => R7_OBUF(2),
      O => R7(2)
    );
\R7_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => R7_OBUF(3),
      O => R7(3)
    );
Reg_Bank_0: entity work.Reg_Bank
     port map (
      AR(0) => Reset_IBUF,
      CLK => Slow_Clk_0_n_0,
      D(3 downto 0) => Data_Mux_to_Reg_Bank(3 downto 0),
      E(0) => Program_Counter_0_n_8,
      Q(3 downto 0) => R7_OBUF(3 downto 0),
      \Q_reg[0]\ => Reg_Bank_0_n_0,
      \Q_reg[0]_0\(0) => Program_Counter_0_n_9,
      \Q_reg[3]\(2) => Reg_Bank_0_n_5,
      \Q_reg[3]\(1) => Reg_Bank_0_n_6,
      \Q_reg[3]\(0) => Reg_Bank_0_n_7,
      \Q_reg[3]_0\(2) => Reg_Bank_0_n_8,
      \Q_reg[3]_0\(1) => Reg_Bank_0_n_9,
      \Q_reg[3]_0\(0) => Reg_Bank_0_n_10,
      \Q_reg[3]_1\(2) => Reg_Bank_0_n_11,
      \Q_reg[3]_1\(1) => Reg_Bank_0_n_12,
      \Q_reg[3]_1\(0) => Reg_Bank_0_n_13,
      \Q_reg[3]_2\(0) => Program_Counter_0_n_11,
      \Q_reg[3]_3\(0) => Program_Counter_0_n_10,
      Zero_OBUF_inst_i_3 => Program_Counter_0_n_7,
      Zero_OBUF_inst_i_3_0 => Program_Counter_0_n_6,
      seg7_out_OBUF(6 downto 0) => seg7_out_OBUF(6 downto 0)
    );
Reset_IBUF_inst: unisim.vcomponents.IBUF
    generic map(
      CCIO_EN => "TRUE"
    )
        port map (
      I => Reset,
      O => Reset_IBUF
    );
Slow_Clk_0: entity work.Slow_Clk
     port map (
      CLK => Slow_Clk_0_n_0,
      Clk_IBUF_BUFG => Clk_IBUF_BUFG
    );
Zero_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => Zero_OBUF,
      O => Zero
    );
\anode_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => anode(0)
    );
\anode_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '1',
      O => anode(1)
    );
\anode_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '1',
      O => anode(2)
    );
\anode_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '1',
      O => anode(3)
    );
\seg7_out_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => seg7_out_OBUF(0),
      O => seg7_out(0)
    );
\seg7_out_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => seg7_out_OBUF(1),
      O => seg7_out(1)
    );
\seg7_out_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => seg7_out_OBUF(2),
      O => seg7_out(2)
    );
\seg7_out_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => seg7_out_OBUF(3),
      O => seg7_out(3)
    );
\seg7_out_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => seg7_out_OBUF(4),
      O => seg7_out(4)
    );
\seg7_out_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => seg7_out_OBUF(5),
      O => seg7_out(5)
    );
\seg7_out_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => seg7_out_OBUF(6),
      O => seg7_out(6)
    );
end STRUCTURE;
