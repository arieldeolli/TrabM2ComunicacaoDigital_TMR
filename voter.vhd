-- Trabalho de Comunicação Digital
-- Aluno: Ariel Vieira de Oliveira
-- Professor: Felipe Viel

-- Bibliotecas utilizadas
library ieee;
use ieee.std_logic_1164.all;

entity voter is port
(
	i_A  : in std_logic_vector (15 downto 0); --entradas
	i_B  : in std_logic_vector (15 downto 0); 
	i_C  : in std_logic_vector (15 downto 0);  
	o_S  : out std_logic_vector (15 downto 0) -- saída

);
end voter;

architecture arch_voter of voter is

begin
  p0: process (i_A, i_B, i_C) --inicia processo p0
  begin
	  if(i_A = i_B) then -- se A e B forem iguais, a saida é igual A
        o_S <= i_A;
        else if (i_B = i_C) then -- se B e C forem iguais, a saida é igual B
          o_S <= i_B;
          else if (i_C = i_A) then -- se C e A forem iguais, a saida é igual C
            o_S <= i_C;	
	       end if;
	     end if;
	  end if;
  end process p0;	-- fim do processo p0  

end arch_voter;
