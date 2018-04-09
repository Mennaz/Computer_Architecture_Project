----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:48:40 05/01/2017 
-- Design Name: 
-- Module Name:    MuxForRegFile - Behavioral 
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
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_arith.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MuxForRegFile is
Port ( rt: in  STD_LOGIC_VECTOR (4 downto 0);
           rd: in  STD_LOGIC_VECTOR (4 downto 0);
			  s : in  STD_LOGIC;
           dec : out STD_LOGIC_VECTOR (4 downto 0));
end MuxForRegFile;

architecture Behavioral of MuxForRegFile is
begin
dec <=rt when (s='0')else
      rd when (s='1')else
		"ZZZZZ";
end Behavioral;


