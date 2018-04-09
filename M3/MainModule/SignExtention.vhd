----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:19:26 05/01/2017 
-- Design Name: 
-- Module Name:    SignExtention - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity SignExtention is
    Port ( mem_16_bit : in  STD_LOGIC_VECTOR (15 downto 0);
           mem_32_bit : out  STD_LOGIC_VECTOR (31 downto 0));
end SignExtention;

architecture Behavioral of SignExtention is
signal sign_bit :STD_LOGIC_VECTOR (15 downto 0); 
begin
sign_bit <= "0000000000000000";
mem_32_bit <=  ( sign_bit & mem_16_bit  ) when (mem_16_bit(15)='0') ELSE
               ( "1111111111111111" & mem_16_bit);  
end Behavioral;


