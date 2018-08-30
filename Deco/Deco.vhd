----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:57:16 08/23/2018 
-- Design Name: 
-- Module Name:    Deco - Arch_Deco 
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

--entity Deco is
--port( A0,A1: in std_logic;
--		s0,s1,s2,s3: out std_logic
--		);
--end Deco;
--
--architecture Arch_Deco of Deco is
--
--signal SEL: std_logic_vector( 1 downto 0);
--signal SALIDA: std_logic_vector(3 downto 0);
--
--begin
--
--Sel <= A1 & A0; 	--Concateno A0 y A1 al vector Sel
--SALIDA <= S3 & S2 & S1 & S0; ESTA MAL

--S0 <= SALIDA(0); --S0 es el bit menos significativo de SALIDA
--S1 <= SALIDA(1);
--S2 <= SALIDA(2);
--S3 <= SALIDA(3);--S1 es el bit ms significativo de SALIDA

-- with select sirve para implementar tablas de verdad
--with SEL select
--	S0 <= '1' when "00",		--S0 vale 1 cuando sel vale 00
--			'0' when "01",		--S0 vale 0 cuando sel vale 01
--			'0' when "10",		--S0 vale 0 cuando sel vale 10
--			'0' when "11",		--S0 vale 0 cuando sel vale 11
--			'0' when others;	--S0 vale 0 cuando la entrada es otra cosa
--			
--with SEL select
--	S1 <= '0' when "00", 	--S1 vale 0 cuando sel vale 00
--			'1' when "01",		--S1 vale 1 cuando sel vale 01
--			'0' when "10",		--S1 vale 0 cuando sel vale 10
--			'0' when others;	--S1 vale 0 cuando sel otra cosa
--
--with SEL select
--			SALIDA <= 	"0001" when "00",
--							"0010" when "01",
--							"0100" when "10",
--							"1000" when "11",
--							"0000" when others;
--end Arch_Deco;

entity Deco is
PORT(	A: in std_logic_vector( 1 downto 0);
		S: out std_logic_vector( 3 downto 0)
		);
end entity Deco;

architecture Arch_Deco of Deco is

begin

with A select
S <= 	"0001" when "00",
		"0010" when "01",
		"0100" when "10",
		"1000" when others;
end Arch_Deco;