library IEEE; 
use IEEE.std_logic_1164.all;
USE ieee.numeric_std.ALL;
entity prime_num is 
              port ( N: in STD_LOGIC_VECTOR (7 downto 0);
				         F: out STD_LOGIC 
							); 
end prime_num;
architecture bhv of prime_num is

      signal NI: integer;
					signal prime: boolean; 
                
begin
					 
	   	process(N,NI,prime) 
			     
       begin 
        
					 NI <= to_integer(unsigned(N));
					 prime<=true;
					  
                if NI=1 or NI=2 then null;
                  else 
                      for i in 2 to 253 loop 
                        if NI mod i = 0 then
                          prime <= false; 
                      exit; 
                       end if; 
                      end loop; 
                 end if; 
                 if prime then F <= '1'; 
                    else F <= '0'; 
                 end if; 
      end process;
 end bhv;