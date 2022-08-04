require_relative "nodo.rb"
require_relative "arista.rb"

nodo1 = Nodo.new('Hola')
nodo2 = Nodo.new('Mundo')

nodo1.to_S
nodo2.to_S

arista = Arista.new(nodo1,nodo2)
arista.to_S