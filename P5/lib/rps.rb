class RockPapperScissors

  @@defeat = { :piedra => :tijeras , :papel => :piedra , :tijeras => :papel }
  @@throws = @@defeat.keys

	class << self
	  def play (player_throw) 

     		 player_throw = player_throw.to_sym 
	   	 computer_throw = @@throws.sample
	
 	 		if  player_throw  == computer_throw
   			"Empate: "
 			elsif player_throw == @@defeat[computer_throw] 
   		 	"Gana maquina. Maquina #{computer_throw} versus Jugador #{player_throw} "
 			else
   			"Bien, gana el jugador. Jugador: #{player_throw} versus Maquina:  #{computer_throw}"
 			end #del if
		end #class methods
	end
end

