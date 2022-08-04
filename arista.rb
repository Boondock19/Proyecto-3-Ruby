require_relative "nodo.rb"
class Arista

    def initialize(x, y)
        @idX = x.get_X
        @idY = y.get_X
        @x = x
        @y = y
    end

    
    def cualquieraDeLosNodos()
        return @idX
    end

    def elOtroNodo(w) 
        if w == @idX
            return @idY
        else
            return @idX
        end
    end
    
    def to_S
        @infoX = @x.get_Info
        @infoY = @y.get_Info
        puts "#{@idX},#{@infoX}-#{@idY},#{@infoY}"
    end

end