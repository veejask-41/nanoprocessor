----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/09/2023 12:31:23 AM
-- Design Name: 
-- Module Name: NanoProcessor - Behavioral
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

entity NanoProcessor is
    Port ( Clk : in STD_LOGIC;
           Reset : in STD_LOGIC;
           Overflow : out STD_LOGIC;
           Zero : out STD_LOGIC;
           R7 : out STD_LOGIC_VECTOR (3 downto 0);
           seg7_out : out STD_LOGIC_VECTOR (6 downto 0);                    
           anode : out STD_LOGIC_VECTOR (3 downto 0)
           );
end NanoProcessor;

architecture Behavioral of NanoProcessor is


component LUT_16_7
    Port ( address : in STD_LOGIC_VECTOR (3 downto 0);
           data : out STD_LOGIC_VECTOR (6 downto 0));
end component;

component Slow_Clk
    Port ( Clk_in : in STD_LOGIC;
           Clk_out : out STD_LOGIC);
end component;

component Register_Bank 
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
end component;

component MUX_8_way_4_Bit 
    Port ( R0 : in STD_LOGIC_VECTOR (3 downto 0);
           R1 : in STD_LOGIC_VECTOR (3 downto 0);
           R2 : in STD_LOGIC_VECTOR (3 downto 0);
           R3 : in STD_LOGIC_VECTOR (3 downto 0);
           R4 : in STD_LOGIC_VECTOR (3 downto 0);
           R5 : in STD_LOGIC_VECTOR (3 downto 0);
           R6 : in STD_LOGIC_VECTOR (3 downto 0);
           R7 : in STD_LOGIC_VECTOR (3 downto 0);
           S : in STD_LOGIC_VECTOR (2 downto 0);
           Q : out STD_LOGIC_VECTOR (3 downto 0));
end component;

component Add_Sub_Unit
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           Sel : in STD_LOGIC;  
           S : out STD_LOGIC_VECTOR (3 downto 0);
           C_Out : out STD_LOGIC; 
           Z_Out : out STD_LOGIC; 
           N_Out : out STD_LOGIC;  
           P_Out : out STD_LOGIC );         
end component;


component MUX_2_way_4_Bit is
    Port ( Adder_Sub_Out : in STD_LOGIC_VECTOR (3 downto 0);
           Imd_Value : in STD_LOGIC_VECTOR (3 downto 0);
           S : in STD_LOGIC;
           Q : out STD_LOGIC_VECTOR (3 downto 0));
end component;


component Instuction_Decoder 
    Port ( Instruction : in STD_LOGIC_VECTOR (11 downto 0);
           Reg_en : out STD_LOGIC_VECTOR (2 downto 0);
           Load_sel : out STD_LOGIC;
           Imd_Val : out STD_LOGIC_VECTOR (3 downto 0);
           Reg_SelA : out STD_LOGIC_VECTOR (2 downto 0);
           Reg_SelB : out STD_LOGIC_VECTOR (2 downto 0);
           Add_SubSel : out STD_LOGIC;
           Jump_add : out STD_LOGIC_VECTOR (2 downto 0);
           Jump_flag : out STD_LOGIC;
           Reg_Check_Jmp : in STD_LOGIC_VECTOR (3 downto 0)); 
                  
end component;


component Program_Rom is
    Port ( address : in STD_LOGIC_VECTOR (2 downto 0);
           data : out STD_LOGIC_VECTOR (11 downto 0));
end component;


component Program_Counter 
    Port ( D : in STD_LOGIC_VECTOR (2 downto 0);
           En : in STD_LOGIC;
           Reset : in STD_LOGIC;
           Clk : in STD_LOGIC;
           Q : out STD_LOGIC_VECTOR (2 downto 0));
end component;


component Adder_3_Bit 
    Port ( A : in STD_LOGIC_VECTOR (2 downto 0);
           C_in : in STD_LOGIC;
           S : out STD_LOGIC_VECTOR (2 downto 0);
           C_out : out STD_LOGIC);
end component;


component MUX_2_way_3_Bit 
    Port ( I0 : in STD_LOGIC_VECTOR (2 downto 0);
           I1 : in STD_LOGIC_VECTOR (2 downto 0);
           S : in STD_LOGIC;
           Q : out STD_LOGIC_VECTOR (2 downto 0));
end component;





signal Imd_Val_Ins_to_Mux, RCA_out, Reg_Check_Jmp, Add_Sub_Out, Data_Mux_to_Reg_Bank, Data_bus0, Data_bus1, Data_bus2, Data_bus3, Data_bus4, Data_bus5, Data_bus6, Data_bus7: STD_LOGIC_VECTOR(3 downto 0);
signal Ins_Bus : STD_LOGIC_VECTOR(11 downto 0);
signal Reg_bus, Mem_Bus, Reg_SelA , Reg_SelB, Count_Mux_to_PC, Mem_RCA3_to_Mux, Jmp_Add: STD_LOGIC_VECTOR (2 downto 0);
signal Add_Sub_Sel, Load_Select_Ins_to_Mux, C_out_RCA_3, Jmp_Flag: STD_LOGIC;
signal Slow_Clk_Signal: STD_LOGIC;

signal Mux_A_out , Mux_B_out :std_logic_vector(3 downto 0);
signal carry_Flag, zero_Flag, negative_Flag, parity_Flag : std_logic;



begin



LUT_16_7_0 : LUT_16_7
port map(
address => Data_bus7,
data => seg7_out);

Slow_Clk_0 : Slow_Clk        
port map (
    Clk_in => Clk,
    Clk_out => Slow_Clk_Signal);
    
Program_Rom_0 :Program_Rom
    port map (
    address => Mem_Bus,     
    data => Ins_Bus);

Program_Counter_0  : Program_Counter 
port map (
    D => Count_Mux_to_PC,
    EN => '1',
    Reset => Reset,
    Clk => Slow_Clk_Signal,
    Q => Mem_Bus);


Instuction_Decoder_0 : Instuction_Decoder
port map (
    Instruction => Ins_Bus,
    Reg_en => Reg_bus,
    Load_sel => Load_Select_Ins_to_Mux,
    Imd_Val => Imd_Val_Ins_to_Mux,
    Reg_SelA => Reg_SelA,
    Reg_SelB => Reg_SelB,
    Add_SubSel => Add_Sub_Sel,
    Jump_add => Jmp_Add,
    Jump_flag => Jmp_Flag,
    Reg_Check_Jmp => Reg_Check_Jmp);

Reg_Check_Jmp <= Mux_A_out;

Reg_Bank_0 : Register_Bank
port map (
      Reg_en => Reg_bus,
      Clk => Slow_Clk_Signal,
      Reset => Reset,
      Inp => Data_Mux_to_Reg_Bank,
      Q0 => Data_bus0,
      Q1 => Data_bus1,
      Q2 => Data_bus2,
      Q3 => Data_bus3,
      Q4 => Data_bus4,
      Q5 => Data_bus5,
      Q6 => Data_bus6,
      Q7 => Data_bus7 );
      
 Add_Sub_Unit_0 : Add_Sub_Unit
      port map( A => Mux_A_out, 
     B => Mux_B_out,  
     Sel => Add_Sub_Sel,  
     S =>  Add_Sub_Out,
     C_Out => carry_Flag, 
     Z_Out => zero_Flag, 
     N_Out => negative_Flag, 
     P_Out => parity_Flag );          

Mux_2_way_4_Bit_0 : Mux_2_way_4_Bit
      port map (
      S => Load_Select_Ins_to_Mux,
      Adder_Sub_Out => Add_Sub_Out,
      Imd_Value => Imd_Val_Ins_to_Mux,
      Q => Data_Mux_to_Reg_Bank);
 

MUX_8_way_4_Bit_A :  MUX_8_way_4_Bit 
    port map (
           R0 => Data_bus0, 
           R1 => Data_bus1,
           R2 => Data_bus2,
           R3 => Data_bus3,
           R4 => Data_bus4,
           R5 => Data_bus5,
           R6 => Data_bus6,
           R7 => Data_bus7,
           S => Reg_SelA,
           Q => Mux_A_out ); 
 
 
 MUX_8_way_4_Bit_B :  MUX_8_way_4_Bit 
   port map (
          R0 => Data_bus0, 
          R1 => Data_bus1,
          R2 => Data_bus2,
          R3 => Data_bus3,
          R4 => Data_bus4,
          R5 => Data_bus5,
          R6 => Data_bus6,
          R7 => Data_bus7,
          S => Reg_SelB,
          Q => Mux_B_out );    
      
      
Adder_3_Bit_0  : Adder_3_Bit 
port map (
    A => Mem_Bus,
    C_in => '0',
    S => Mem_RCA3_to_Mux,
    C_out => C_out_RCA_3);

MUX_2_way_3_Bit_0 : MUX_2_way_3_Bit
port map (
    S => Jmp_Flag,
    I0 => Mem_RCA3_to_Mux,
    I1 => Jmp_Add,
    Q => Count_Mux_to_PC);

Overflow <= carry_Flag; 
Zero <= zero_Flag;

R7 <= Data_bus7;

anode <= "1110";

end Behavioral;
