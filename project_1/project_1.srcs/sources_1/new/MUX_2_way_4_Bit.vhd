----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/09/2023 12:19:43 AM
-- Design Name: 
-- Module Name: MUX_2_way_4_Bit - Behavioral
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

entity MUX_2_way_4_Bit is
    Port ( Adder_Sub_Out : in STD_LOGIC_VECTOR (3 downto 0);
           Imd_Value : in STD_LOGIC_VECTOR (3 downto 0);
           S : in STD_LOGIC;
           Q : out STD_LOGIC_VECTOR (3 downto 0));
end MUX_2_way_4_Bit;

architecture Behavioral of MUX_2_way_4_Bit is

begin
    process(Adder_Sub_Out, Imd_Value, S)
    begin
        case S is
            when '0' => Q <= Adder_Sub_Out ;
            when '1' => Q <= Imd_Value ; 
            when others => Q <= "ZZZZ";
        end case;
     end process;
end Behavioral;
