# File: circ.rb 
#!/usr/bin/env ruby

class Circunferencia

 def initialize(perim)
    raise unless perimetro.is_a?(Numeric)
    raise ArgumentError, "no se puede introducir un numero negativo" unless perimetro >= 0
    @perimetro = perim
 end

 def radio()
    @perimetro/2*3.14
 end

end
  
