----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:54:50 08/23/2018 
-- Design Name: 
-- Module Name:    guiaDeClase00_05 - Arch_guiaDeClase00_05 
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

entity guiaDeClase00_05 is
    Port ( a : in  STD_LOGIC_VECTOR(1 downto 0);
           c : in  STD_LOGIC;
           s : out  STD_LOGIC);
end guiaDeClase00_05;

architecture Arch_guiaDeClase00_05 of guiaDeClase00_05 is

begin

s <= 	a(1) WHEN c = '1' ELSE
		a(0) WHEN c = '0' ELSE	
		'0';

end Arch_guiaDeClase00_05;

