----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:35:52 08/23/2018 
-- Design Name: 
-- Module Name:    Mux4a1 - Arch_Mux4a1 
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

entity Mux4a1 is
PORT( I: in std_logic_vector(3 downto 0);	--Contiene a I0, I1, I2, I3
		SEL: in std_logic_vector(1 downto 0);--Contiene las dos entradas de seleccion
		S: out std_logic 	--Salida
		);
end Mux4a1;

architecture Arch_Mux4a1 of Mux4a1 is

begin

with SEL select
	S <= 	I(0) when "00",
			I(1) when "01",
			I(2) when "10",
			I(3) when "11",
			'0'  when others;

end Arch_Mux4a1;

