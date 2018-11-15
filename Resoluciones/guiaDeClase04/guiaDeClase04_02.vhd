----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:03:30 11/08/2018 
-- Design Name: 
-- Module Name:    myUartTxTest - ARCH_myUartTxTest 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity myUartTxTest is
	Port ( 	clk: in std_logic;
				rst: in std_logic;
				sw: in std_logic_vector (3 downto 0);
				tx: out std_logic);
end myUartTxTest;

architecture ARCH_myUartTxTest of myUartTxTest is

	type state_t is ( StandBy, Send);
	signal state: state_t;
	
	signal dataWr, ready, notRst: std_logic;
	signal dataTx: std_logic_vector(7 downto 0);
	
begin
	
	dataTx <= sw & X"5";
	
	notRst <= not(rst);
	
	UartTx: entity work.myUartTx(ARCH_myUartTx)
	PORT MAP(
		clk => clk,
		rst => notRst,
		dataWr => dataWr,
		ready => ready,
		dataTx => dataTx,
		tx => tx
	);
	
	P1: process(clk)
	begin
		if Rising_Edge(clk) then
			if notRst = '1' then
				state <= StandBy;
			else
				case state is
				----------------------------------
					when StandBy =>
						--Señales:
							dataWr <= '0';
						--Tranciciones:
							if ready = '1' then
								state <= Send;
							end if;
				----------------------------------
					when Send =>
						--Señales:
							dataWr <= '1';
						--Tranciciones:
							state <= StandBy;
				----------------------------------
				end case;
			end if;
		end if;
	end process P1;
end ARCH_myUartTxTest;

