def limpiar
    system('clear')
end
def insertar(cola)
    limpiar
    puts"Inserte Un Numero: "
    x = gets.chomp.to_i
    elemento = {
        valor: x,
        siguiente: nil
    }
    if cola[:esta_vacia] == true
        cola[:tope] = elemento
        cola[:fondo] = elemento
        cola[:esta_vacia] = false
        cola[:tamaño] = cola[:tamaño] +1
    else
        aux = cola[:fondo]
        aux[:siguiente] = elemento
        elemento[:siguiente] = nil
        cola[:fondo] = elemento
        cola[:tamaño] = cola[:tamaño] +1
    end
end
pila_aux = {
    tope: nil,
    tamaño: 0
}
pila = {
    tope: nil,
    tamaño: 0
}
cola = {
    fondo: nil,
    tope: nil,
    esta_vacia: true,
    tamaño: 0,
    esta_llena: false
}
lista={
    tope: nil,
    fondo: nil,
    vacia:true,
    llena:false,
    tamaño:0 
}
def ordenar_pila(pila, arreglo, pila_aux)
    limpiar
    puts "Insertando: #{arreglo[0]}"
    insertar_pila(arreglo[0], pila)
    if arreglo.size > 1
        for i in (1 .. arreglo.size - 1)
            if pila[:tope][:valor] > arreglo[i]
                for i in (1 .. pila[:tamaño])
                    puts 'Vaciando pila'
                    insertar_pila(pila[:tope][:valor], pila_aux)
                    eliminar_pila(pila)
                end
                puts arreglo[i]
                insertar_pila(arreglo[i], pila)
                for i in (1 .. pila_aux[:tamaño]) 
                    if arreglo[i] > pila_aux[:tope][:valor]
                        insertar_pila(arreglo[i], pila)
                    end
                    insertar_pila(pila_aux[:tope][:valor], pila)
                    eliminar_pila(pila_aux)
                end
            else
               puts "Insertando: #{arreglo[i]}"
               insertar_pila(arreglo[i], pila) 
            end
        end  
    end
    puts pila[:tope]
    puts "2"
    puts pila_aux[:tope]
    gets
end
def eliminar_pila(pila)
    aux = pila[:tope]
    pila[:tope] = aux[:siguiente]
    pila[:tamaño] -= 1
end
def insertar_pila(num, pila)
    elemento = {
        valor: num,
        siguiente: nil
    }
    if pila[:tope] == nil
         pila[:tope] = elemento
    else
        elemento[:siguiente] = pila[:tope]
        pila[:tope] = elemento
    end   
    pila[:tamaño] += 1
end
def obtener_posicion(lista, valor)
    i = 0
    aux = lista[:tope]
    loop do
      if aux[:valor][:carnet] == carnet || aux[:siguiente].nil?
        break
      end
      i += 1
      aux = aux[:siguiente]
    end
    return i
end
def obtener_nodo(lista, posicion)
    nodo = {}
    i = 0
    aux = lista[:tope]
    loop do
      if i == posicion
        nodo = aux
        return nodo
      end
      if aux[:siguiente] == nil
        break
      end
      i += 1
      aux = aux[:siguiente]
    end
    return nodo
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
         puts "Ingrese los valores deseados, separandolos por una coma"
        a = gets.chomp.split(',').map{|n|n.to_i}
    elsif opcion=='2'
        #Mostrar los datos de forma asendente en diferente estructura
    elsif opcion=='3'
        puts '1. Mostrar Pila'
        puts '2. Mostrar Cola'
        puts '3. Mostrar Lista'
        opc = gets.to_i
        if opc == 1
            ordenar_pila(pila, a, pila_aux)
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