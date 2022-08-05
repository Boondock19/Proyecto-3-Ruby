require_relative "nodo.rb"
class Arista
    
    # Clase que representa a una arista de un grafo no dirigido.
    # Recibe dos nodos como argumentos.
    #
    # ==== Atributos
    #
    # * +idX+ - El id del primer nodo.
    # * +idY+ - El id del segundo nodo.
    # * +x+ - Primer nodo.
    # * +y+ - Segundo nodo.
    #
    # ==== Ejemplos
    #
    #  Dados el nodo x e y, se puede crear una arista con:
    #  Arista.new(x, y).
    

    def initialize(x, y)
        @idX = x.get_X
        @idY = y.get_X
        @x = x
        @y = y
    end


    # Metodo que devuelve el nodo x de la arista.
    # @return Nodo
    def cualquieraDeLosNodos()
        return @idX
    end

    # Metodo que toma un nodo y devuelve el otro nodo.
    # @param Nodo 
    # @return Nodo
    def elOtroNodo(w) 
        if w == @idX
            return @idY
        else
            return @idX
        end
    end

    # Metodo para imprimir una arista.
    # @return String
    
    def to_S
        @infoX = @x.get_Info
        @infoY = @y.get_Info
        return "(#{@idX},#{@infoX}-#{@idY},#{@infoY})"
    end

end