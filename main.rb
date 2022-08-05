require_relative "nodo.rb"
require_relative "arista.rb"
require_relative "grafoNoDirigido.rb"
require_relative "DFS.rb"

# Ana Sofia Santos C  17-10602
# Jose Matias Gonzalez V 15-10627

# Archivo Main que se encargara de ejecutar el cliente para el DFS


opcion = ""

puts "Bienvenido al programa de busqueda en profundidad"
puts "Se  le presentara un menu de opciones , por favor inserte el numero de la opcion"
puts "Por ejemplo si desea inicializar el grafo coloque 1."
while opcion != "5"
    
    
    
    puts "\n1. Inicializar el grafo"
    puts "2. Agregar un nodo"
    puts "3. Agregar una arista"
    puts "4. Realizar busqueda de la información "
    puts "5. Salir" + "\n"

    opcion = gets 
    opcion = opcion.chomp

    case opcion
    when "1"
        puts "\nDiga la cantidad de nodos del grafo\n"
        cantidad = gets.chomp
        grafo = GrafoNoDirigido.new(cantidad.to_i)
        grafo.resetNodos
        puts "Grafo inicializado, por favor agregue nodos"
    when "2"
        puts "\nIngrese la informacion del nodo\n"
        info = gets.chomp
        nodo = Nodo.new(info)
        grafo.agregarNodo(nodo)
        puts "Ha sido agregado el nodo #{nodo.to_S}"
    when "3"
        puts "\nIngrese indice de los nodos que conforman a la arista\n"
        puts "Por favor ingrese uno por linea"
        puts "Recuerde que debe haber agregado al menos dos nodos"
        id1 = gets.chomp
        id2 = gets.chomp
        nodo1 = grafo.get_Nodo(id1.to_i)
        nodo2 = grafo.get_Nodo(id2.to_i)
        arista = Arista.new(nodo1, nodo2)
        grafo.agregarArista(arista)
        puts "Ha sido agregada la arista #{arista.to_S}"
    when "4"
        puts "\nIngrese la información que desea buscar en el grafo\n"
        info2 = gets.chomp
        dfs = DFS.new(grafo, info2)
        dfs.dfs_Base()
        if dfs.get_NodoEncontrado() == nil
            puts "No se encontro un nodo con la informacion buscada"
        else
            puts "Se encontro el #{dfs.get_NodoEncontrado().to_S}"
        end
    when "5"
        puts "\nGracias por usar el programa" + "\n"
    end
end
