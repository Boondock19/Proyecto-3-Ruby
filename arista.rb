class Arista

    def initialize(x, y)
        @x = x
        @y = y
    end

    def elOtroNodo(w) 
        if w == @x
            return @y
        else
            return @x
        end
    end
    
    def to_s
        puts "#{@x}-#{@y}"
    end

end