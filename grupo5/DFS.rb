class DFS

    # Clase que representa a un DFS de un grafo.
    # Recibe un grafo y la información a buscar como argumentos.
    #
    # ==== Atributos
    #
    # 
    # * +grafo+ - Array de listas de adyacencias del grafo.
    # * +informacion+ - String a buscar en el grafo.
    # * +nodos+ - Array de nodos del grafo.
    # * +aristas+ - Array de aristas del grafo.
    # * +color+ - Array de colores de los nodos del grafo.
    # * +predecesores+ - Array de predecesores de los nodos del grafo.
    # * +tiempo+ - Tiempo para llevar el conteo de tiempo inicial y final.
    # * +tiempoInicial+ - Array de tiempos iniciales de los nodos del grafo.
    # * +tiempoFinal+ - Array de tiempos finales de los nodos del grafo.
    # * +numeroNodos+ - Cantidad  de nodos del grafo.
    # * +nodoEncontrado+ - Nodo encontrado por el DFS.
    #
    # ==== Ejemplos
    #
    #  Dados el grafo grafoNoDirigidoA y el string "Alo" se puede crear un grafo con:
    #  DFS.new(grafoNoDirigidoA,"Alo").

   def initialize(grafo,informacion)
        @grafo = grafo
        @nodos = @grafo.get_Nodos
        @aristas = @grafo.get_Aristas
        @color = Array.new(@nodos.length) {"BLANCO"}
        @predecesores = Array.new(@nodos.length) {nil}
        @tiempo = 0
        @tiempoInicial = Array.new(@nodos.length) {0}
        @tiempoFinal = Array.new(@nodos.length) {0}
        @numeroNodos = @nodos.length
        @informacion = informacion
        @nodoEncontrado = nil
    end
    

    # Metodo inicializa el DFS.
    def dfs_Base()
        for i in 0..@nodos.length-1
            if @color[i] == "BLANCO"
                dfs_Visit(i)
            end
        end
    end

    # Metodo recursivo que realiza el DFS.
    def dfs_Visit(i)
        @tiempo = @tiempo + 1
        @tiempoInicial[i] = @tiempo
        @color[i] = "GRIS"
        adyacentes = @grafo.adyacentes(@nodos[i])
        
        for j in 0..adyacentes.length-1
            if @color[adyacentes[j].elOtroNodo(i)] == "BLANCO"
                @predecesores[adyacentes[j].elOtroNodo(i)] = i
                dfs_Visit(adyacentes[j].elOtroNodo(i))
            end
        end
        @tiempo = @tiempo + 1
        @tiempoFinal[i] = @tiempo
        if @nodos[i].get_Info == @informacion
            @nodoEncontrado = @nodos[i]
        end
        @color[i] = "NEGRO"
    end

    # Metodo retorna el predecesor de un nodo en el DFS.
    # @param Nodo del grafo.
    def predecesores(nodo)
        return @predecesores[nodo.get_X]
    end

    # Metodo retorna el Array de predecesores en el DFS.
    def get_All_Predecesores()
        return @predecesores
    end

    # Metodo retorna un objeto con los tiempos inicial y final de un nodo en el DFS.
    # @param Nodo del grafo.
    def obtenerTiempo(nodo)
        instNodo = OpenStruct.new()
        instNodo.tiempoInicial = @tiempoInicial[nodo.get_X]
        instNodo.tiempoFinal = @tiempoFinal[nodo.get_X]
        return instNodo 
    end

    # Metodo que retorna el nodo encontrado por el DFS.
    # En caso contrario retoran nil.
    def get_NodoEncontrado()
        if @nodoEncontrado != nil
            return @nodoEncontrado
        else
            
            return nil
        end
    end
end