----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:13:05 04/17/2017 
-- Design Name: 
-- Module Name:    Mux_ALUOperation_Selector - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Mux_ALUOperation_Selector is
Port ( andd : in  STD_LOGIC;
           oor : in  STD_LOGIC;
           add : in  STD_LOGIC;
           less: in  STD_LOGIC;
           muxoutput : out  STD_LOGIC;
			   aluop1 : in  STD_LOGIC_VECTOR (1 downto 0));
end Mux_ALUOperation_Selector;

architecture Behavioral of Mux_ALUOperation_Selector is
begin
muxoutput <=  andd when (aluop1="00")else
              oor when (aluop1="01" )else
              add when (aluop1="10") else
	           less when (aluop1="11");
end Behavioral;

