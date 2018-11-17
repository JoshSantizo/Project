require 'rubygems'
require 'terminal-table/import'
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

def eliminar_pila(pila)
    aux = pila[:tope]
    pila[:tamaño] -= 1
    pila[:tope] = aux[:siguiente]
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
def ordenar_pila(arreglo)
    limpiar
    pila = {
        tope: nil,
        tamaño: 0
    }
    pila_menores = {
        tope: nil,
        tamaño: 0
    }
    pila_mayores = {
        tope: nil,
        tamaño: 0
    }
    cont = 0
    rows = []
    for i in (0 .. arreglo.length - 1)
        vector_final = []
        if pila[:tope] == nil
            insertar_pila(arreglo[i], pila)
            rows << [cont, "#{arreglo[i]}"]
            cont += 1
        else
            if arreglo[i] >= pila[:tope][:valor]
                insertar_pila(arreglo[i], pila)
                a = pila[:tope]
                for i in (1 .. pila[:tamaño])
                    vector_final.push(a[:valor])
                    break if a[:siguiente] == nil
                    a = a[:siguiente]
                end
                vector_final = vector_final.join(" => ")
                rows << [cont, vector_final]
                cont += 1
            elsif arreglo[i] < pila[:tope][:valor]
                for i in (1 .. pila[:tamaño])
                    rows << [cont, "voy vaciando mi pila"]
                    cont += 1
                    if pila[:tope][:valor] < arreglo[i]
                        insertar_pila(pila[:tope][:valor], pila_menores)
                        eliminar_pila(pila)
                    elsif pila[:tope][:valor] > arreglo[i]
                        insertar_pila(pila[:tope][:valor], pila_mayores)
                        eliminar_pila(pila)
                    end
                end
                for i in (1 .. pila_menores[:tamaño])
                    rows << [cont, "voy vaciando mi pila menores"]
                    cont += 1
                    insertar_pila(pila_menores[:tope][:valor], pila)
                    rows << [cont, " E inserto en pila#{pila_menores[:tope][:valor]}"]
                    cont += 1
                    eliminar_pila(pila_menores)
                end
                rows << [cont, "Inserto en mi pila #{arreglo[i]}"]
                cont += 1
                insertar_pila(arreglo[i], pila)
                for i in (1 .. pila_mayores[:tamaño])
                    rows << [cont, "voy vaciando mi pila mayores"]
                    cont += 1
                    insertar_pila(pila_mayores[:tope][:valor], pila)
                    rows << [cont, "E inserto en pila #{pila_mayores[:tope][:valor]}"]
                    cont += 1
                    eliminar_pila(pila_mayores)
                end
            end
        end
    end
    vector_fina = []
    b = pila[:tope]
    for i in (1 .. pila[:tamaño])
        vector_fina.push(b[:valor])
        break if b[:siguiente] == nil
        b = b[:siguiente]
    end
    vector_fina = vector_fina.join(" => ")
    rows << [cont, "Ordenamiento final: #{vector_fina}"]
    cont += 1
    table = Terminal::Table.new :headings => ['Iteración', 'Estructura de datos como iria quedando'],:rows => rows
    puts table
    gets
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
    puts "4. Salir"
    opcion=gets.chomp
    if opcion== '1'
        #Ingreso de numeros en todas las estructuras
         puts "Ingrese los valores deseados, separandolos por una coma"
        a = gets.chomp.split(',').map{|n|n.to_i}
        tamaño = a.size
    elsif opcion=='2'
        #Mostrar los datos de forma asendente en diferente estructura
    elsif opcion=='3'
        limpiar
        puts '1. Mostrar Pila'
        puts '2. Mostrar Cola'
        puts '3. Mostrar Lista'
        opc = gets.to_i
        if opc == 1
            #ordenar paso a paso pila
            ordenar_pila(a)
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