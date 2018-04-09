----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:50:11 04/06/2017 
-- Design Name: 
-- Module Name:    ALU - Behavioral 
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
use work.Package_Alu.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU is
port (
		data1 : in std_logic_vector(31 downto 0); 
		data2 : in std_logic_vector(31 downto 0) ;
		aluop : in std_logic_vector(3 downto 0);
		cin : in std_logic;
		dataout: out std_logic_vector(31 downto 0); 
		cflag: out std_logic;
		zflag: out std_logic;
		oflag: out std_logic
);
end ALU;

architecture Behavioral of ALU is
signal data_out :std_logic_vector(31 downto 0);
signal carry : std_logic ;
signal carry1 : std_logic ;
signal carry2: std_logic ;
signal carry3 : std_logic ;
signal carry_4 : std_logic ;
signal carry5 : std_logic ;
signal carry6 : std_logic ;
signal carry7 : std_logic ;
signal carry8 : std_logic ;
signal carry9 : std_logic ;
signal carry10 : std_logic ;
signal carry11 : std_logic ;
signal carry12 : std_logic ;
signal carry13 : std_logic ;
signal carry14 : std_logic ;
signal carry15 : std_logic ;
signal carry16 : std_logic ;
signal carry17 : std_logic ;
signal carry18 : std_logic ;
signal carry19 : std_logic ;
signal carry20: std_logic ;
signal carry21 : std_logic ;
signal carry22 : std_logic ;
signal carry23 : std_logic ;
signal carry24 : std_logic ;
signal carry25 : std_logic ;
signal carry26 : std_logic ;
signal carry27 : std_logic ;
signal carry28 : std_logic ;
signal carry29 : std_logic ;
signal carry30 : std_logic ;
signal carry31 : std_logic ;
----------------------------
signal stl0 : std_logic ;
signal stl1 : std_logic ;
signal stl2 : std_logic ;
signal stl3 : std_logic ;
signal stl4 : std_logic ;
signal stl5 : std_logic ;
signal stl6 : std_logic ;
signal stl7 : std_logic ;
signal stl8 : std_logic ;
signal stl9 : std_logic ;
signal stl10 : std_logic ;
signal stl11 : std_logic ;
signal stl12 : std_logic ;
signal stl13 : std_logic ;
signal stl14 : std_logic ;
signal stl15 : std_logic ;
signal stl16 : std_logic ;
signal stl17 : std_logic ;
signal stl18 : std_logic ;
signal stl19 : std_logic ;
signal stl20 : std_logic ;
signal stl21 : std_logic ;
signal stl22 : std_logic ;
signal stl23 : std_logic ;
signal stl24 : std_logic ;
signal stl25 : std_logic ;
signal stl26 : std_logic ;
signal stl27 : std_logic ;
signal stl28 : std_logic ;
signal stl29 : std_logic ;
signal stl30 : std_logic ;
signal stl31 : std_logic ;
----------------------------
begin
M0 : Alu_1_Bit port map (data1(0),data2(0),aluop,cin,stl31,carry,stl0,data_out(0));
 -- stl out of alu w a5er stl hya mkan el zero elle da5l ll less   
M1 : Alu_1_Bit port map (data1(1),data2(1),aluop,carry,'0',carry1,stl1,data_out(1));
M2 : Alu_1_Bit port map (data1(2),data2(2),aluop,carry1,'0',carry2,stl2,data_out(2));
M3 : Alu_1_Bit port map (data1(3),data2(3),aluop,carry2,'0',carry3,stl3,data_out(3));
M4 : Alu_1_Bit port map (data1(4),data2(4),aluop,carry3,'0',carry_4,stl4,data_out(4));
M5 : Alu_1_Bit port map (data1(5),data2(5),aluop,carry_4,'0',carry5,stl5,data_out(5));
M6 : Alu_1_Bit port map (data1(6),data2(6),aluop,carry5,'0',carry6,stl6,data_out(6));
M7 : Alu_1_Bit port map (data1(7),data2(7),aluop,carry6,'0',carry7,stl7,data_out(7));
M8 : Alu_1_Bit port map (data1(8),data2(8),aluop,carry7,'0',carry8,stl8,data_out(8));
M9 : Alu_1_Bit port map (data1(9),data2(9),aluop,carry8,'0',carry9,stl9,data_out(9));
M10: Alu_1_Bit port map (data1(10),data2(10),aluop,carry9,'0',carry10,stl10,data_out(10));
M11 : Alu_1_Bit port map (data1(11),data2(11),aluop,carry10,'0',carry11,stl11,data_out(11));
M12 : Alu_1_Bit port map (data1(12),data2(12),aluop,carry11,'0',carry12,stl12,data_out(12));
M13 : Alu_1_Bit port map (data1(13),data2(13),aluop,carry12,'0',carry13,stl13,data_out(13));
M14 : Alu_1_Bit port map (data1(14),data2(14),aluop,carry13,'0',carry14,stl14,data_out(14));
M15 : Alu_1_Bit port map (data1(15),data2(15),aluop,carry14,'0',carry15,stl15,data_out(15));
M16 : Alu_1_Bit port map (data1(16),data2(16),aluop,carry15,'0',carry16,stl16,data_out(16));
M17 : Alu_1_Bit port map (data1(17),data2(17),aluop,carry16,'0',carry17,stl17,data_out(17));
M18 : Alu_1_Bit port map (data1(18),data2(18),aluop,carry17,'0',carry18,stl18,data_out(18));
M19 : Alu_1_Bit port map (data1(19),data2(19),aluop,carry18,'0',carry19,stl19,data_out(19));
M20 : Alu_1_Bit port map (data1(20),data2(20),aluop,carry19,'0',carry20,stl20,data_out(20));
M21 : Alu_1_Bit port map (data1(21),data2(21),aluop,carry20,'0',carry21,stl21,data_out(21));
M22 : Alu_1_Bit port map (data1(22),data2(22),aluop,carry21,'0',carry22,stl22,data_out(22));
M23 : Alu_1_Bit port map (data1(23),data2(23),aluop,carry22,'0',carry23,stl23,data_out(23));
M24 : Alu_1_Bit port map (data1(24),data2(24),aluop,carry23,'0',carry24,stl24,data_out(24));
M25 : Alu_1_Bit port map (data1(25),data2(25),aluop,carry24,'0',carry25,stl25,data_out(25));
M26 : Alu_1_Bit port map (data1(26),data2(26),aluop,carry25,'0',carry26,stl26,data_out(26));
M27 : Alu_1_Bit port map (data1(27),data2(27),aluop,carry26,'0',carry27,stl27,data_out(27));
M28 : Alu_1_Bit port map (data1(28),data2(28),aluop,carry27,'0',carry28,stl28,data_out(28));
M29 : Alu_1_Bit port map (data1(29),data2(29),aluop,carry28,'0',carry29,stl29,data_out(29));
M30 : Alu_1_Bit port map (data1(30),data2(30),aluop,carry29,'0',carry30,stl30,data_out(30));
M31 : Alu_1_Bit port map (data1(31),data2(31),aluop,carry30,'0',carry31,stl31,data_out(31));
------------------------------------------------------------------------------------------------
cflag <= carry31;
oflag <= carry31 xor carry30;
zflag <=not ( 
data_out(0) or data_out(1) or data_out(2) or  data_out(3) or  data_out(4) or  data_out(5) or 
data_out(6) or data_out(7) or data_out(8) or data_out(9) or 
data_out(10) or data_out(11) or data_out(12) or  data_out(13) or  data_out(14) or  data_out(15) or 
data_out(16) or data_out(17) or data_out(18) or data_out(19) or 
data_out(20) or data_out(21) or data_out(22) or  data_out(23) or  data_out(24) or  data_out(25) or 
data_out(26) or data_out(27) or data_out(28) or data_out(29) or data_out(30) or data_out(31)
);
dataout<=data_out;
end Behavioral;

