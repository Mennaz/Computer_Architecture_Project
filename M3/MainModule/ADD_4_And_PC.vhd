----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:18:13 05/01/2017 
-- Design Name: 
-- Module Name:    ADD_4_And_PC - Behavioral 
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
use IEEE.STD_LOGIC_unsigned.ALL;
use IEEE.STD_LOGIC_arith.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ADD_4_And_PC is
 Port ( x1 : in  STD_LOGIC_VECTOR (31 downto 0); --address 32  
           sum1 : out  STD_LOGIC_VECTOR (31 downto 0)); -- out 32 
end ADD_4_And_PC;

architecture Behavioral of ADD_4_And_PC is
signal Tmp :std_logic_vector(31 downto 0);
signal Tmp1 :std_logic_vector(31 downto 0);

begin
Tmp1<="00000000000000000000000000000100"; -- rkm 4 in bin 
Tmp <= (x1) + (Tmp1); --- agm3 4 3la el address elle da5el 
sum1<= Tmp(31 DOWNTO 0); --- el out 32 bit 
end Behavioral;

