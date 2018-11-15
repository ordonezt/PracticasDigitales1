----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:56:56 10/24/2018 
-- Design Name: 
-- Module Name:    ContAnilloBi - ARCH_ContAnilloBi 
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

entity ContAnilloBi is
	Generic( N: natural := 8);
	Port(
			clk: in std_logic;
			rst: in std_logic;
			ena: in std_logic;
			dir: in std_logic;	--0 ascendente 1 descendente
			q: out std_logic_vector(N-1 downto 0)
			);
end ContAnilloBi;

architecture ARCH_ContAnilloBi of ContAnilloBi is

	signal SigD: std_logic_vector(N-1 downto 0);
	signal SigQ: std_logic_vector(N-1 downto 0);
begin

	ShiftReg: entity work.guiaDeClase02_08(ARCH_guiaDeClase02_08)
	Generic Map( N => N )
	Port Map(
				clk => clk,
				rst => rst,
				ena => ena,
				dir => dir,
				dl => SigQ(0),
				dr => SigQ(N-1),
				d => SigD,
				q => SigQ
				);
	
	Q <= SigQ;
	
	SigD <= "10000000" when dir = '1' else "00000001";
	
end ARCH_ContAnilloBi;

