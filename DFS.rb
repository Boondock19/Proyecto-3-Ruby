class DFS

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
    

    def dfs_Base()
        for i in 0..@nodos.length-1
            if @color[i] == "BLANCO"
                dfs_Visit(i)
            end
        end
    end

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

    def predecesores(nodo)
        return @predecesores[nodo.get_X]
    end

    def get_All_Predecesores()
        return @predecesores
    end

    def obtenerTiempo(nodo)
        instNodo = OpenStruct.new()
        instNodo.tiempoInicial = @tiempoInicial[nodo.get_X]
        instNodo.tiempoFinal = @tiempoFinal[nodo.get_X]
        return instNodo 
    end

    def get_NodoEncontrado()
        if @nodoEncontrado != nil
            return @nodoEncontrado
        else
            
            return nil
        end
    end
end