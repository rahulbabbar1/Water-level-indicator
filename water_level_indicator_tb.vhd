--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:29:17 03/29/2016
-- Design Name:   
-- Module Name:   C:/Users/RAHUL/vhdl_projects/Water_level_indicator/water_level_indicator_tb.vhd
-- Project Name:  Water_level_indicator
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: water_level_indicator
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY water_level_indicator_tb IS
END water_level_indicator_tb;
 
ARCHITECTURE behavior OF water_level_indicator_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT water_level_indicator
    PORT(
         a0 : IN  std_logic;
         a1 : IN  std_logic;
         a2 : IN  std_logic;
         a3 : IN  std_logic;
         a4 : IN  std_logic;
         a : OUT  std_logic;
         b : OUT  std_logic;
         c : OUT  std_logic;
         d : OUT  std_logic;
         e : OUT  std_logic;
         f : OUT  std_logic;
         g : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a0 : std_logic := '1';
   signal a1 : std_logic := '0';
   signal a2 : std_logic := '0';
   signal a3 : std_logic := '0';
   signal a4 : std_logic := '0';

 	--Outputs
   signal a : std_logic;
   signal b : std_logic;
   signal c : std_logic;
   signal d : std_logic;
   signal e : std_logic;
   signal f : std_logic;
   signal g : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: water_level_indicator PORT MAP (
          a0 => a0,
          a1 => a1,
          a2 => a2,
          a3 => a3,
          a4 => a4,
          a => a,
          b => b,
          c => c,
          d => d,
          e => e,
          f => f,
          g => g
        );

   -- Clock process definitions

   -- Stimulus process
   stim_proc: process
   begin		
	wait for 100 ns;
	a1 <= '1';
   end process;
	stim_proc2: process
   begin		
	wait for 200 ns;
	a2 <= '1';
   end process;
	stim_proc3: process
   begin		
	wait for 300 ns;
	a3 <= '1';
   end process;
	stim_proc4: process
   begin		
	wait for 400 ns;
	a4 <= '1';
   end process;

END;
