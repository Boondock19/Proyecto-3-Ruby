class Nodo 

    # Clase que representa a un nodo de un grafo.
    # Recibe un string como argumentos.
    #
    # ==== Atributos
    #
    # * +x+ - El id del nodo.
    # * +info+ - Información del nodo.
    # * +contador+ - Contador de la cantidad de nodos instanciados.
    #
    #
    # ==== Ejemplos
    #
    #  Dado el string "Hola", se puede crear un nodo con:
    #  Nodo.new("Hola").

    @@contador = 0
    def initialize(info)
        @x = @@contador
        @info = info
        @@contador += 1
    end

    # Metodo que devuelve el id del nodo.
    # @return Integer
    def get_X
        return @x
    end
    
    # Metodo que la informacion del nodo.
    # @return String
    def get_Info 
        return @info
    end

    # Metodo para imprimir un Nodo.
    # @return String
    def to_S 
        return "Nodo #{@x} con info #{@info}"
    end

    # Metodo para reiniciar el contador de nodos.
    # @return String
    def reset
        @@contador = 0
    end
end