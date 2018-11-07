pila={
    tope:nil,
    vacia:true,
    llena:false,
    tamaño:0
}
cola={
    tope:nil,
    final:nil,
    vacia:true,
    llena:false,
    tamaño:0 
}
lista={
    tope: nil,
    fondo: nil,
    vacia:true,
    llena:false,
    tamaño:0 
}
def insertar_pila(num, pila)
    elemento = {
        valor: num,
        siguiente: nil
    }
    if pila[:vacia] == true
        pila[:tope] = elemento
        pila[:vacia] = false
    else
        elemento[:siguiente] = pila[:tope]
        pila[:tope] = elemento
    end    
end
begin
puts "Bienvenido al programa para ordenar numeros de diferentes formas"
puts "Seleccione el número de la opcion deseada"
puts "1. Ingreso de numeros"
puts "2. Mostrar datos ordenados de forma asendente"
puts "3. Ordenar paso a paso"
puts "4. Salir"
opcion=gets.chomp
if opcion== '1'
    #Ingreso de numeros en todas las estructuras
elsif opcion=='2'
    #Mostrar los datos de forma asendente en diferente estructura
elsif opcion=='3'
    puts '1. Mostrar Pila'
    puts '2. Mostrar Cola'
    puts '3. Mostrar Lista'

    if opc == 1
        #ordenar paso a paso pila
    elsif opc == 2
        #ordenar paso a paso cola
    elsif opc == 3
        #ordenar paso a paso lista
    else 
        puts 'Ingrese nuevamente su opcion'
    end

elsif opcion=='4'
    puts 'Fin del programa'
end
end while opcion != '4'
