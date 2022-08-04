require_relative "nodo.rb"
require_relative "arista.rb"
require_relative "grafoNoDirigido.rb"



grafoNoDirigido1 = GrafoNoDirigido.new(8)
puts grafoNoDirigido1.get_Nodos.inspect
grafoNoDirigido1.agregarNodo(Nodo.new('Hola'))
puts grafoNoDirigido1.get_Nodos.inspect
grafoNoDirigido1.agregarNodo(Nodo.new('Mundo'))
puts grafoNoDirigido1.get_Nodos.inspect
grafoNoDirigido1.agregarNodo(grafoNoDirigido1.get_Nodo(0))
puts grafoNoDirigido1.get_Grafo.inspect

grafoNoDirigido1.agregarArista(Arista.new(grafoNoDirigido1.get_Nodo(0), grafoNoDirigido1.get_Nodo(1)))
puts grafoNoDirigido1.get_Grafo.inspect

puts grafoNoDirigido1.adyacentes(grafoNoDirigido1.get_Nodo(0)).inspect
