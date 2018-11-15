--Guia 3, ejercicio 4
--Alumno: Tomás Bautista Ordóñez
--Legajo: 1595659
--GitLab User: toordonez
--Mail: tomasbautista.o@gmail.com


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity guiaDeClase03_04 is
	Port ( 	clk : in std_logic;
				rst : in std_logic;
				led : out std_logic_vector (7 downto 0));
end guiaDeClase03_04;

architecture ARCH_guiaDeClase03_04 of guiaDeClase03_04 is

	Signal Sig1Seg: std_logic;
begin

	ContAnillo: entity work.ContAnilloBi(ARCH_ContAnilloBi)
	PORT MAP(
				clk => clk,
				rst => rst,
				ena => Sig1Seg,
				dir => '0',
				q => led
				);
	
	Con1seg: entity work.guiaDeClase03_03(ARCH_guiaDeClase03_03)
	PORT MAP(
				clk => clk,
				rst => rst,
				led => Sig1Seg
				);
	
end ARCH_guiaDeClase03_04;

