require_relative "nodo.rb"
class Arista

    def initialize(x, y)
        @x = x.get_X
        @y = y.get_X
    end

    def elOtroNodo(w) 
        if w == @x
            return @y
        else
            return @x
        end
    end
    
    def to_S
        puts "#{@x},#{@x.get_Info}-#{@y},#{@y.get_Info}"
    end

end