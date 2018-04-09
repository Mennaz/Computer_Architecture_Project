----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:38:47 04/06/2017 
-- Design Name: 
-- Module Name:    Alu-1-Bit - Behavioral 
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
use IEEE.STD_LOGIC_arith.ALL;
use work.Alu_Package.all;


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Alu_1_Bit is
  Port (   A : in  STD_LOGIC ;
           B : in  STD_LOGIC ;
       aluop : in  STD_logic_vector(3 downto 0) ;
    carrryin : in  STD_LOGIC;
		  less : in  STD_LOGIC;--keda btd5ol 3l al mux al kbeer wal alu s
    carryout : out  STD_LOGIC;
		   stl : out  STD_LOGIC;
      reslut : out  STD_LOGIC );
end Alu_1_Bit;

architecture Behavioral of Alu_1_Bit is
SIGNAL inp1: STD_LOGIC ;
SIGNAL inp2: STD_LOGIC ;
SIGNAL inp3: STD_LOGIC ;
SIGNAL inp4: STD_LOGIC ;
SIGNAL Aout: STD_LOGIC ;
SIGNAL Bout: STD_LOGIC ;
SIGNAL sum: STD_LOGIC;
SIGNAL output: STD_LOGIC;
SIGNAL andd: STD_LOGIC;
SIGNAL oor: STD_LOGIC;
SIGNAL add: STD_LOGIC;
SIGNAL muxoutput: STD_LOGIC;
signal s : STD_LOGIC_VECTOR (5 downto 0);
signal al : STD_LOGIC_VECTOR (1 downto 0);
SIGNAL nandn: STD_LOGIC;
SIGNAL noor: STD_LOGIC;

begin
inp1<=A;
inp2<=B;
al<=aluop( 1 downto 0) ;	 
-------------------------------------------
R1:  NotGate  Port MAP ( inp1,inp3);--not a
R2:  Mux_2_1  Port MAP( inp1 ,inp3 ,aluop(3) ,Aout );
R3:  NotGate  Port MAP ( inp2,inp4);--not b 
R4:  Mux_2_1  Port MAP( inp2 ,inp4 ,aluop(2) ,Bout);
R5:  AndGate  PORT MAP ( Aout,Bout,andd );
R6:  OrGate   PORT MAP (Aout,Bout,oor);
R7:  Full_Adder_1_Bit Port MAP ( A,Bout , carrryin,add , output);
R8:  Mux_ALUOperation_Selector Port MAP ( andd,oor ,add,less, reslut ,al );
R9:  AndGate  PORT MAP ( inp3,inp4,noor );--nor
R10: OrGate   PORT MAP (inp3,inp4,nandn);--nand
---------------------------------------------
stl<=add;
carryout<=output;
end Behavioral;

