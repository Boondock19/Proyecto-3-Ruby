class Nodo 

    def initialize(x,info)
        @x = x
        @info = info
    end

    def get_X
        return @x
    end
    
    def get_Info 
        return @info
    end

    def to_S 
        puts "Nodo #{@x} con info #{@info}"
    end
end