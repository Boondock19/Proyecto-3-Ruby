class GrafoNoDirigido

    def initialize(n)
        @n = n
        @grafo = Array.new(@n) { Array.new() }
        @nodos = Array.new(@n)
    end

    def agregarNodo(nodo)
        if @nodos.include?(nodo)
            puts "Ese nodo ya se encuentra dentro den grafo"
            
        else 
            @nodos[nodo.get_X] = nodo
            @grafo[nodo.get_X] = []
           
        end
    end

    def get_Nodos
        return @nodos
    end

    def get_Grafo
        return @grafo
    end

    def get_Nodo(id)
        return @nodos[id]
    end

    def agregarArista(arista)
        if @grafo[arista.cualquieraDeLosNodos].include?(arista)
            puts "Esa arista ya se encuentra dentro del grafo"
        else
            @grafo[arista.cualquieraDeLosNodos].push(arista)
            @grafo[arista.elOtroNodo(arista.cualquieraDeLosNodos)].push(arista)
        end
    end

    def adyacentes(nodo)
        return @grafo[nodo.get_X]
    end
end
