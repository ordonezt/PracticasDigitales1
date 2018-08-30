----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:20:02 08/23/2018 
-- Design Name: 
-- Module Name:    guiaDeClase00_03 - Arch_guiaDeClase00_03 
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

entity guiaDeClase00_03 is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Cin : in  STD_LOGIC;
           S : out  STD_LOGIC;
           Cout : out  STD_LOGIC);
end guiaDeClase00_03;

architecture Arch_guiaDeClase00_03 of guiaDeClase00_03 is

signal CoutSignals: STD_LOGIC_VECTOR(2 downto 0);

begin

S <= A xor B xor Cin;
Cout <= CoutSignals(2) or CoutSignals(1) or CoutSignals(0);

CoutSignals(2) <= Cin and A;
CoutSignals(1) <= Cin and B;
CoutSignals(0) <= B and A;

end Arch_guiaDeClase00_03;

