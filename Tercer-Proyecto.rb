def limpiar
    system('clear')
end

def mostrar_cola(cola)
    limpiar
    if    cola[:esta_vacia]==true
        puts "no hay datos"
    else
    elemento = cola[:tope]
    puts elemento[:valor]
  begin
     nuevo_elemento = elemento[:siguiente]
    nuevo_elemento [:valor]
    elemento = nuevo_elemento
    puts elemento[:valor]
  end while elemento[:siguiente] != nil
  gets
end
end
def insertar(cola)
    limpiar
    
    puts "Ingrese los valores deseados, separandolos por una coma"
    a = gets.chomp.split(',').map{|n|n.to_i}

    elemento = {
        valor: a,
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
    def ordenamiento(a)
       for i in 1..a.size-1
        valor = a[i]
        puts valor 
        posicion = i
        puts posicion 
          while posicion > 0 && a[posicion-1] > valor
            a[posicion] = a[posicion-1]
            puts a[posicion]
            puts a[posicion-1]
            posicion = posicion - 1 
            puts posicion
            puts posicion-1
          end
        a[posicion] = valor 
        puts a[posicion]
        puts valor  
        end
      end 
      
   def ordenamiento2(a)
    for i in 1..a.size - 1
    valor = a[i]
    posicion = i
      while posicion < valor && a[posicion-1] < 0
        a[posicion] = a[posicion-1]
        posicion = posicion - 1 
      end
    a[posicion] = valor  
    end
  end 

  
      puts 'Opciones:'
      puts '1.Ordenar ascendente'
      puts '2.Ordenar Desendente'
      opcn = gets.chomp 
      if opcn == '1'
        puts 'FORMA ASCENDENTE'     
     
         ordenamiento(a)
       
        print "#{a}"
    end 
    if opcn == '2'
        ordenamiento2(a)
        print "#{a.reverse}"
    end 
    

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

pila={
    tope:nil,
    vacia:true,
    llena:false,
    tamaño:0
}

cola = {
    fondo: nil,
    tope: nil,
    max:-1,
    esta_vacia: true,
    tamaño:0,
    esta_llena: false
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

def ordenar_lista(lista, a)

    for i in 0..tamaño do
        nodo_i = {
            valor: a[i],
            siguiente: nli
        }  
    end 

    for i in 0..tamaño do
        if lista[:tamaño] == 0
            lista[:tope] = a[i] && lista[:final] = a[i]
            lista[:vacia] = false
            lista[:tamaño] += 1

        else
            if a[i] < a[i-1]
                lista[:tope] = a[i]
                lista[:final] = a[i-1]
                lista[:tamaño] += 1
            end                

        end
    end


end
    
    
begin
   puts "Bienvenido al programa para ordenar numeros de diferentes formas"
    puts "Seleccione el número de la opcion deseada"
    puts "1. Ingreso de numeros"
    puts "2. Mostrar datos ordenados de forma asendente"
    puts "3. Ordenar paso a paso"
    puts "4.Inserta el la cola/ordenamiento"
    puts "5. Salir"
    opcion=gets.chomp
    if opcion == '4'
        insertar(cola)
    end 
    if opcion== '1'
        #Ingreso de numeros en todas las estructuras
         puts "Ingrese los valores deseados, separandolos por una coma"
        a = gets.chomp.split(',').map{|n|n.to_i}
        insertar_cola(cola,a)
    elsif opcion=='2'
        #Mostrar los datos de forma asendente en diferente estructura
        mostrar_cola(cola)
    elsif opcion=='3'
        puts '1. Mostrar Pila'
        puts '2. Mostrar Cola'
        puts '3. Mostrar Lista'
        opc = gets.chomp 
        if opc == 1
            #ordenar paso a paso pila
        elsif opc == 2
            puts 'ordenar paso a paso cola'
             puts "4.Inserta en la cola"
             op= gets.chomp 
            # op == '4'
             if op == '4'
                insertar(cola)
            end 
        elsif opc == 3
            #ordenar paso a paso lista
        else 
            puts 'Ingrese nuevamente su opcion'
        end
    
    elsif opcion=='5'
        puts 'Fin del programa'
    end
end while opcion != '5'

