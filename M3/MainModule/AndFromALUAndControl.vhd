----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:31:19 05/01/2017 
-- Design Name: 
-- Module Name:    AndFromALUAndControl - Behavioral 
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
use IEEE.STD_LOGIC_SIGNED.all;
use IEEE.STD_LOGIC_ARITH.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity AndFromALUAndControl is
    Port ( Branchbit : in  STD_LOGIC;
	        Zeroflag : in  STD_LOGIC;
           outFromAnd : out  STD_LOGIC);
end AndFromALUAndControl;

architecture Behavioral of AndFromALUAndControl is
begin
outFromAnd<=Branchbit and Zeroflag;
end Behavioral;