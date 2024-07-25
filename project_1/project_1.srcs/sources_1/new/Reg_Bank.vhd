----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/09/2023 12:08:29 AM
-- Design Name: 
-- Module Name: Reg_Bank - Behavioral
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

entity Register_Bank is
    Port ( Reg_en : in STD_LOGIC_VECTOR (2 downto 0);
           Clk : in STD_LOGIC;
           Reset : in STD_LOGIC;
           Inp : in STD_LOGIC_VECTOR (3 downto 0);
           Q0 : out STD_LOGIC_VECTOR (3 downto 0);
           Q1 : out STD_LOGIC_VECTOR (3 downto 0);
           Q2 : out STD_LOGIC_VECTOR (3 downto 0);
           Q3 : out STD_LOGIC_VECTOR (3 downto 0);
           Q4 : out STD_LOGIC_VECTOR (3 downto 0);
           Q5 : out STD_LOGIC_VECTOR (3 downto 0);
           Q6 : out STD_LOGIC_VECTOR (3 downto 0);
           Q7 : out STD_LOGIC_VECTOR (3 downto 0));
end Register_Bank;

architecture Behavioral of Register_Bank is

component Decoder_3_to_8 
    Port ( I : in STD_LOGIC_VECTOR (2 downto 0);
           EN : in STD_LOGIC;
           Y : out STD_LOGIC_VECTOR (7 downto 0));
end component;

component Reg 
    Port ( D : in STD_LOGIC_VECTOR (3 downto 0);
           En : in STD_LOGIC;
           Clk : in STD_LOGIC;
           Reset : in STD_LOGIC;
           Q : out STD_LOGIC_VECTOR (3 downto 0));
end component;

SIGNAL Y : STD_LOGIC_VECTOR (7 downto 0);

begin

Decoder_3_to_8_0: Decoder_3_to_8
PORT MAP(
    I=>Reg_en,
    EN =>'1',
    Y=>Y
);

R0 : Reg
PORT MAP(
    D=>"0000",
    En => '0',
    Clk => Clk,
    Reset => Reset,
    Q=> Q0
);

R1 : Reg
PORT MAP(
    D=>Inp,
    En => Y(1),
    Clk => Clk,
    Reset => Reset,
    Q=> Q1
);

R2 : Reg
PORT MAP(
    D=>Inp,
    En => Y(2),
    Clk => Clk,
    Reset => Reset,
    Q=> Q2
);

R3 : Reg
PORT MAP(
    D=>Inp,
    En => Y(3),
    Clk => Clk,
    Reset => Reset,
    Q=> Q3
);

R4 : Reg
PORT MAP(
    D=>Inp,
    En => Y(4),
    Clk => Clk,
    Reset => Reset,
    Q=> Q4
);

R5 : Reg
PORT MAP(
    D=>Inp,
    En => Y(5),
    Clk => Clk,
    Reset => Reset,
    Q=> Q5
);

R6 : Reg
PORT MAP(
    D=>Inp,
    En => Y(6),
    Clk => Clk,
    Reset => Reset,
    Q=> Q6
);

R7 : Reg
PORT MAP(
    D=>Inp,
    En => Y(7),
    Clk => Clk,
    Reset => Reset,
    Q=> Q7
);
end Behavioral;
