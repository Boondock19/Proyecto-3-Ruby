class GrafoNoDirigido

    # Clase que representa a un grafo no dirigido.
    # Recibe la cantidad de nodos como argumentos.
    #
    # ==== Atributos
    #
    # * +n+ - La cantidad de nodos del grafo.
    # * +grafo+ - Array de listas de adyacencias del grafo.
    # * +nodos+ - Array de nodos del grafo.
    # * +aristas+ - Array de aristas del grafo.
    #
    # ==== Ejemplos
    #
    #  Dados el int 8 se puede crear un grafo con:
    #  GrafoNoDirigido.new(8).
    
    def initialize(n)
        @n = n
        @grafo = Array.new(@n) { Array.new() }
        @nodos = Array.new(@n)
        @aristas = Array.new()
    end


    # Metodo que toma un nodo y lo agrega al grafo.
    # @return String

    def agregarNodo(nodo)
        if @nodos.include?(nodo)
            puts "Ese nodo ya se encuentra dentro den grafo"
            
        else 
            @nodos[nodo.get_X] = nodo
            @grafo[nodo.get_X] = []
           
        end
    end

    # Metodo que retorna todos los nodos del grafo.
    # @return [Nodo]
    def get_Nodos
        return @nodos
    end
    
    # Metodo que retorna las listas de adyacencias del grafo.
    # @return [Arista]
    def get_Grafo
        return @grafo
    end

    # Metodo que retorna el nodo con el id especificado.
    # @return Nodo
    def get_Nodo(id)
        return @nodos[id]
    end

    # Metodo que retorna la arista con el id especificado.
    # @return Arista
    def get_Aristas
        return @aristas
    end

    # Metodo que agrega una arista en el grafo.
    # @return Arista
    def agregarArista(arista)
        if @grafo[arista.cualquieraDeLosNodos].include?(arista)
            puts "Esa arista ya se encuentra dentro del grafo"
        else
            @grafo[arista.cualquieraDeLosNodos].push(arista)
            @grafo[arista.elOtroNodo(arista.cualquieraDeLosNodos)].push(arista)
            @aristas.push(arista)
        end
    end

    # Metodo que para obtener los adyacentes de un nodo.
    # @return [Arista]
    def adyacentes(nodo)
        return @grafo[nodo.get_X]
    end

    # Metodo que para reiniciar el contador de nodos.
    # @return [Arista]
    def resetNodos 
        Nodo.new("").reset
    end
end
