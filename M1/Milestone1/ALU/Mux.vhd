----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:00:39 04/06/2017 
-- Design Name: 
-- Module Name:    Mux - Behavioral 
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

entity Mux_Alu is
Port (     and_in : in  STD_LOGIC;
            or_in : in  STD_LOGIC;
              add : in  STD_LOGIC;
       unused_pin : in  STD_LOGIC;
       mux_output : out  STD_LOGIC;
           alu_op : in  STD_LOGIC_VECTOR (1 downto 0));
			  end Mux_Alu ;

architecture Behavioral of Mux_Alu is
begin
mux_output <= and_in  when ( alu_op="00")else
                or_in when ( alu_op="01" )else
              add     when ( alu_op="10") else
	      unused_pin   when ( alu_op="11");


end Behavioral;

