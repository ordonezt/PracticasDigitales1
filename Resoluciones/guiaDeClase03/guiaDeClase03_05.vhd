--Guia 3, ejercicio 5
--Alumno: Tomás Bautista Ordóñez
--Legajo: 1595659
--GitLab User: toordonez
--Mail: tomasbautista.o@gmail.com


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity guiaDeClase03_05 is
	Port ( 	clk : in std_logic;
				rst : in std_logic;
				btn: in std_logic;
				led : out std_logic_vector (7 downto 0));
end guiaDeClase03_05;

architecture ARCH_guiaDeClase03_05 of guiaDeClase03_05 is

	Signal Sig1Seg: std_logic;
	
begin

	ContAnillo: entity work.ContAnilloBi(ARCH_ContAnilloBi)
	PORT MAP(
				clk => clk,
				rst => rst,
				ena => Sig1Seg,
				dir => btn,
				q => led
				);
	
	Con1seg: entity work.guiaDeClase03_03(ARCH_guiaDeClase03_03)
	PORT MAP(
				clk => clk,
				rst => rst,
				led => Sig1Seg
				);
	


end ARCH_guiaDeClase03_05;

