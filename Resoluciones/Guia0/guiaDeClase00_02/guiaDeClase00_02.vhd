----------------------------------------------------------------------------------
-- Universidad Tecnolgica Nacional
-- Facultad Regional Buenos Aires
--
-- Author: Toms Bautista Ordez 
-- 
-- Create Date:    13:02:22 08/23/2018 
-- Design Name: 	 And de 4 entradas
-- Module Name:    guiaDeClase00_02 - Arch_guiaDeClase00_02 
-- Project Name: 	 And de 4 entradas
-- Target Devices: 
-- Tool versions:  14.7
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

entity guiaDeClase00_02 is
Port ( a : in std_logic_vector (3 downto 0);
		 c : out std_logic);
end guiaDeClase00_02;

architecture Arch_guiaDeClase00_02 of guiaDeClase00_02 is

signal X: std_logic_vector;

begin

C <= X(1) and X(0);
X(1) <= A(3) and A(2);
X(0) <= A(1) and A(0);

end Arch_guiaDeClase00_02;

