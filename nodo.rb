class Nodo 

    @@contador = 0
    def initialize(info)
        @x = @@contador
        @info = info
        @@contador += 1
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