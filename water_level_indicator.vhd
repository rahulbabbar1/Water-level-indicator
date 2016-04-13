----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:09:46 03/29/2016 
-- Design Name: 
-- Module Name:    water_level_indicator - Behavioral 
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

entity water_level_indicator is
port(
	a0 : in std_logic;
	a1 : in std_logic;
	a2 : in std_logic;
	a3 : in std_logic;
	a4 : in std_logic;
	a : out std_logic;
	b : out std_logic;
	c : out std_logic;
	d : out std_logic;
	e : out std_logic;
	f : out std_logic;
	g : out std_logic
		);	
end water_level_indicator;

architecture Behavioral of water_level_indicator is

begin
	a <= a4 or ( ( not a3) and a1 );
	b <= not a4;
	c <= a2 or ( not a1 );  
	d <= a4 or ( ( not a3) and a1 );
	e <= a1 and ( not a2 );
	f <= a3;
	g <= a1;
end Behavioral;

