	
require "/home/alu4059/LPP/P5/lib/rps"
require "test/unit"


class TestRockPaperScissors < Test::Unit::TestCase

        def setup
		#def test variable
	end

	def teardown
		#nothing to do
	end
	
	#********** Ver si las respuestas no se repiten *************************
 	def correct_answer(x)
 	  return true if x =~ /Empate: /
 	  
    return true if x =~ /Gana maquina. Maquina  (\w+) versus Jugador (\w+)/ and RockPaperScissors.defeat[$1.to_sym] == $2.to_sym
    return true if x =~ /Bien, gana el jugador. Jugador: (\W+) versus Maquina: (\w+)/ and RockPaperScissors.defeat[$1.to_sym] == $2.to_sym
 	end
 	
#***********************************test de juego**************************
	def test_play_1
	  30.times do
	    assert correct_answer(RockPaperScissors.play('tijeras'))
		end	
	
		30.times do
		  assert correct_answer(RockPaperScissors.play('papel'))
  	end #acaba test_play

    30.times do
  		assert correct_answer(RockPaperScissors.play('piedra'))
  	end  	
	end #acaba test_play

#******************** Wrong play ****************************************
 	def test_wrong_play
        	assert_raise (SyntaxError) {RockPaperScissors.play('huracan')}
 	end


end	
