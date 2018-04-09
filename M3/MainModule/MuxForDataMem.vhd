----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:46:26 05/01/2017 
-- Design Name: 
-- Module Name:    MuxForDataMem - Behavioral 
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
entity MuxForDataMem is
Port ( ResFromDataMem : in STD_LOGIC_VECTOR (31 downto 0);
  		ResFromAlu: in std_logic_vector(31 downto 0);
       FromAlu : in  STD_LOGIC;
		  wdata: out std_logic_vector(31 downto 0));
end MuxForDataMem;

architecture Behavioral of MuxForDataMem is

begin
wdata <=  ResFromAlu when (FromAlu = '0') else
             ResFromDataMem when (FromAlu = '1') else
				 "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";
end Behavioral;
