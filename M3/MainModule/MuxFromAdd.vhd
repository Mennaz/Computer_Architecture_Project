----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:51:20 05/01/2017 
-- Design Name: 
-- Module Name:    MuxFromAdd - Behavioral 
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

entity MuxFromAdd is
Port (ResFromAdd1 : in  STD_LOGIC_VECTOR (31 downto 0);
       ResFromAdd2 : in  STD_LOGIC_VECTOR (31 downto 0);
       selector : in  STD_LOGIC;
		 ResToMux: out  STD_LOGIC_VECTOR (31 downto 0));
end MuxFromAdd;

architecture Behavioral of MuxFromAdd is
begin
ResToMux<=  ResFromAdd1 when (selector = '0') else
             ResFromAdd2 when (selector = '1') else
				 "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";
end Behavioral;



