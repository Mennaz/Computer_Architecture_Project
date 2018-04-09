----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:40:32 04/17/2017 
-- Design Name: 
-- Module Name:    MainModule - Behavioral 
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
use ieee.STD_LOGIC_unsigned.all;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.STD_LOGIC_arith.all;
use work.MyPack.all;


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MainModule is
port (
START: IN STD_LOGIC;
CLK: IN STD_LOGIC;
RegFileOut1: OUT STD_LOGIC_VECTOR(31 downto 0);
RegFileOut2: OUT STD_LOGIC_VECTOR(31 downto 0);
ALUOut: OUT STD_LOGIC_VECTOR(31 downto 0));
end MainModule;

architecture Behavioral of MainModule is
signal bit6_output       :std_logic_vector(5 downto 0);
signal addout1           :std_logic_vector(31 downto 0);
signal data              :std_logic_vector(31 downto 0);
signal decision          :std_logic;
signal write_datafromalu :std_logic_vector(31 downto 0);
signal outputToAlu1      :std_logic_vector(3 downto 0);
signal data1toalu        :std_logic_vector(31 downto 0);
signal data2toalu        :std_logic_vector(31 downto 0);
signal tmpout            :std_logic_vector(31 downto 0);
signal cflag1            :std_logic;
signal zflag1            :std_logic;
signal oflag1            :std_logic;
signal rs                :std_logic_vector(4 downto 0);
signal rt                :std_logic_vector(4 downto 0);
signal rd                :std_logic_vector(4 downto 0);
signal oop               :std_logic_vector(5 downto 0);
-------------------------------------------------------
begin
oop<=data(31 downto 26) ;
rs<=data(25 downto 21);
rt<=data(20 downto 16);
rd<=data(15 downto 11);
Address_Out     :reg generic map (6) port map("000000",CLK,'0',START, not(START),bit6_output);
Actual_Address  :Shift_PC_Out  Port map( bit6_output ,addout1);
Add_To_IM       : INSTRMEMORY port map( not START, data,addout1,CLK);
Write_Decision  :Condition Port map(oop ,decision);
Op_Code         :Funct Port map(data(5 downto 0),outputToAlu1);
CalL_Alu        :ALU port map(data1toalu, data2toalu,outputToAlu1,outputToAlu1(2),tmpout,cflag1,zflag1,oflag1);
Return_To_RF    :RegisterFile Port map(rs,rt,rd,decision,CLK,tmpout,data1toalu,data2toalu);
-------------------------------------------------------
AluOut<=tmpout;
RegFileOut1 <=data1toalu;
RegFileOut2 <=data2toalu;
end Behavioral;

