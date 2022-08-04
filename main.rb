require_relative "nodo.rb"
require_relative "arista.rb"
require_relative "grafoNoDirigido.rb"
require_relative "DFS.rb"



grafoNoDirigido1 = GrafoNoDirigido.new(6)

nodo1 = Nodo.new("A")
nodo2 = Nodo.new("B")
nodo3 = Nodo.new("C")
nodo4 = Nodo.new("D")
nodo5 = Nodo.new("E")
nodo6 = Nodo.new("F")

arista1 = Arista.new(nodo1, nodo4)
arista2 = Arista.new(nodo1, nodo5)
arista3 = Arista.new(nodo2, nodo4)
arista4 = Arista.new(nodo2, nodo6)
arista5 = Arista.new(nodo3, nodo5)
arista6 = Arista.new(nodo5, nodo6)


grafoNoDirigido1.agregarNodo(nodo1)
grafoNoDirigido1.agregarNodo(nodo2)
grafoNoDirigido1.agregarNodo(nodo3)
grafoNoDirigido1.agregarNodo(nodo4)
grafoNoDirigido1.agregarNodo(nodo5)
grafoNoDirigido1.agregarNodo(nodo6)

grafoNoDirigido1.agregarArista(arista1)
grafoNoDirigido1.agregarArista(arista2)
grafoNoDirigido1.agregarArista(arista3)
grafoNoDirigido1.agregarArista(arista4)
grafoNoDirigido1.agregarArista(arista5)
grafoNoDirigido1.agregarArista(arista6)

dfs = DFS.new(grafoNoDirigido1)
dfs.dfs_Base()

puts dfs.predecesores(nodo3).inspect
puts dfs.get_All_Predecesores().inspect