----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:34:25 08/23/2018 
-- Design Name: 
-- Module Name:    guiaDeClase00_04 - Arch_guiaDeClase00_03 
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

entity guiaDeClase00_04 is
Port ( a : in std_logic_vector (3 downto 0);
		 p : out std_logic);
end guiaDeClase00_04;

architecture Arch_guiaDeClase00_03 of guiaDeClase00_04 is

begin

p <= a(3) xor a(2) xor a(1) xor a(0);

end Arch_guiaDeClase00_03;

