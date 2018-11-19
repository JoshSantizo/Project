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
  rows = []
  for i in (0 .. arreglo.length - 1)
      vector_final = []
      if pila[:tope] == nil
          insertar_pila(arreglo[i], pila)
          rows << ["#{arreglo[i]}"]
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
              rows << [vector_final]
          elsif arreglo[i] < pila[:tope][:valor]
              for i in (1 .. pila[:tamaño])
                  rows << ["voy vaciando mi pila"]
                  if pila[:tope][:valor] < arreglo[i]
                      insertar_pila(pila[:tope][:valor], pila_menores)
                      eliminar_pila(pila)
                  elsif pila[:tope][:valor] > arreglo[i]
                      insertar_pila(pila[:tope][:valor], pila_mayores)
                      eliminar_pila(pila)
                  end
              end
              for i in (1 .. pila_menores[:tamaño])
                  rows << ["voy vaciando mi pila menores"]
                  insertar_pila(pila_menores[:tope][:valor], pila)
                  rows << [" E inserto en pila#{pila_menores[:tope][:valor]}"]
                  eliminar_pila(pila_menores)
              end
              rows << ["Inserto en mi pila #{arreglo[i]}"]
              insertar_pila(arreglo[i], pila)
              for i in (1 .. pila_mayores[:tamaño])
                  rows << ["voy vaciando mi pila mayores"]
                  insertar_pila(pila_mayores[:tope][:valor], pila)
                  rows << ["E inserto en pila #{pila_mayores[:tope][:valor]}"]
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
  rows << ["Ordenamiento final: #{vector_fina}"]
  table = Terminal::Table.new :headings => ['Iteración', 'Estructura de datos']
  puts table
  print "Desea ver el siguiente paso?, si es asi presione cualquier tecla si desa salir presione E "
  for i in (0 .. rows.size - 1)
      pregunta = gets.chomp.upcase
      break if pregunta =='E'
      tabla = Terminal::Table.new do |t|
      t.add_row [i + 1, "#{rows[i]}"]
  end
      puts tabla
  end
  gets
  limpiar
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

def ver(cola)
    limpiar

    as = cola[:tope]
    while as[:siguiente] != nil
    puts as[:valor]
    as=as[:siguiente]
    end
    puts as[:valor]
    puts cola[:tope]
end
def ver2(cola2)
    limpiar

    as = cola2[:tope]
    while as[:siguiente] != nil
    puts as[:valor]
    as=as[:siguiente]
    end
    puts as[:valor]
    puts cola2[:tope]
end
def ver3(cola3)
    limpiar

    as = cola3[:tope]
    while as[:siguiente] != nil
    puts as[:valor]
    as=as[:siguiente]
    end
    puts as[:valor]
    puts cola3[:tope]
end
def ver4(cola4)
    limpiar

    as = cola4[:tope]
    while as[:siguiente] != nil
    puts as[:valor]
    as=as[:siguiente]
    end
    puts as[:valor]
    puts cola4[:tope]
end

def ordena(cola, cola2, cola3, cola4)
  limpiar
    puts 'Arreglo a ordenar'
    puts 'Forma Asendente'
    puts cola[:tope][:valor]
    puts  cola2[:tope][:valor]
    puts cola3[:tope][:valor]
    puts cola4[:tope][:valor]
    puts '______________________________'
    if cola[:tope][:valor] > cola2[:tope][:valor] && cola[:tope][:valor] > cola3[:tope][:valor] && cola[:tope][:valor] > cola4[:tope][:valor]

      if  cola[:tope][:valor] > cola2[:tope][:valor] && cola[:tope][:valor] > cola3[:tope][:valor] && cola[:tope][:valor] > cola4[:tope][:valor]
        puts cola[:tope][:valor]
      end

      if  cola2[:tope][:valor] > cola[:tope][:valor] && cola2[:tope][:valor] > cola3[:tope][:valor] && cola2[:tope][:valor] > cola4[:tope][:valor]
        puts cola2[:tope][:valor]
      end

      if  cola3[:tope][:valor] > cola[:tope][:valor] && cola3[:tope][:valor] > cola2[:tope][:valor] && cola3[:tope][:valor] > cola4[:tope][:valor]
        puts cola3[:tope][:valor]
      end
      if  cola4[:tope][:valor] > cola[:tope][:valor] && cola4[:tope][:valor] > cola2[:tope][:valor] && cola4[:tope][:valor] > cola3[:tope][:valor]
        puts cola4[:tope][:valor]
      end
      puts '______________________________'
      if  cola2[:tope][:valor] > cola3[:tope][:valor] && cola2[:tope][:valor] > cola4[:tope][:valor]
        puts cola2[:tope][:valor]
      end
      if  cola3[:tope][:valor] > cola2[:tope][:valor] && cola3[:tope][:valor] > cola4[:tope][:valor]
        puts cola3[:tope][:valor]
      end
      if  cola4[:tope][:valor] > cola2[:tope][:valor] && cola4[:tope][:valor] > cola3[:tope][:valor]
        puts cola4[:tope][:valor]
      end
      puts '______________________________'
      if  cola2[:tope][:valor] > cola3[:tope][:valor]
        puts cola2[:tope][:valor]
      end

      if  cola3[:tope][:valor] > cola2[:tope][:valor]
        puts cola3[:tope][:valor]
      end
      puts '______________________________'
      puts cola2[:tope][:valor]
      puts '______________________________'
    end
    if cola2[:tope][:valor] > cola[:tope][:valor] && cola2[:tope][:valor] > cola3[:tope][:valor] && cola2[:tope][:valor] > cola4[:tope][:valor]
        if  cola2[:tope][:valor] > cola[:tope][:valor] && cola2[:tope][:valor] > cola3[:tope][:valor] && cola2[:tope][:valor] > cola4[:tope][:valor]
            puts cola2[:tope][:valor]
          end
     puts '______________________________'
          if  cola4[:tope][:valor] > cola[:tope][:valor] && cola4[:tope][:valor] > cola3[:tope][:valor]
            puts cola4[:tope][:valor]
          end
    puts '______________________________'
          if  cola3[:tope][:valor] > cola[:tope][:valor]
            puts cola3[:tope][:valor]
          end
     puts '______________________________'
     puts cola[:tope][:valor]
     puts '______________________________'
    end
    if cola3[:tope][:valor] > cola[:tope][:valor] && cola3[:tope][:valor] > cola2[:tope][:valor] && cola3[:tope][:valor] > cola4[:tope][:valor]
        if  cola3[:tope][:valor] > cola[:tope][:valor] && cola3[:tope][:valor] > cola2[:tope][:valor] && cola3[:tope][:valor] > cola4[:tope][:valor]
            puts cola3[:tope][:valor]
        end
     puts '______________________________'
     if  cola4[:tope][:valor] > cola[:tope][:valor] && cola4[:tope][:valor] > cola2[:tope][:valor]
        puts cola4[:tope][:valor]
      end
     puts '______________________________'
     if  cola[:tope][:valor] > cola2[:tope][:valor]
        puts cola[:tope][:valor]
      end
      puts '______________________________'
      puts cola2[:tope][:valor]
      puts '______________________________'

    end
    if cola4[:tope][:valor] > cola[:tope][:valor] && cola4[:tope][:valor] > cola2[:tope][:valor] && cola4[:tope][:valor] > cola3[:tope][:valor]
        if  cola4[:tope][:valor] > cola[:tope][:valor] && cola4[:tope][:valor] > cola2[:tope][:valor] && cola4[:tope][:valor] > cola3[:tope][:valor]
            puts cola4[:tope][:valor]
        end
     puts '______________________________'
     if  cola[:tope][:valor] > cola2[:tope][:valor] && cola[:tope][:valor] > cola3[:tope][:valor]
        puts cola[:tope][:valor]
      end
     puts '______________________________'

    if  cola3[:tope][:valor] > cola2[:tope][:valor]
        puts cola3[:tope][:valor]
      end
      puts '______________________________'
      puts cola2[:tope][:valor]
      puts '______________________________'

    end

end
def ordenad(cola, cola2, cola3, cola4)
  limpiar
    puts 'Forma Desendente'
    puts 'Arreglo a ordenar'

    puts cola[:tope][:valor]
    puts  cola2[:tope][:valor]
    puts cola3[:tope][:valor]
    puts cola4[:tope][:valor]
    puts '______________________________'
    if cola2[:tope][:valor] < cola[:tope][:valor] && cola2[:tope][:valor] < cola3[:tope][:valor] && cola2[:tope][:valor] < cola4[:tope][:valor]
        if  cola2[:tope][:valor] < cola3[:tope][:valor] && cola2[:tope][:valor] < cola4[:tope][:valor] && cola2[:tope][:valor] < cola4[:tope][:valor]
            puts cola2[:tope][:valor]
          end
          puts '______________________________'
          if  cola3[:tope][:valor] < cola[:tope][:valor] && cola3[:tope][:valor] < cola4[:tope][:valor]
            puts cola3[:tope][:valor]
          end
          puts '______________________________'
          if  cola4[:tope][:valor] < cola[:tope][:valor]
            puts cola4[:tope][:valor]
          end
          puts '______________________________'
          puts cola[:tope][:valor]
          puts '______________________________'
    end
    if cola[:tope][:valor] < cola2[:tope][:valor] && cola[:tope][:valor] < cola3[:tope][:valor] && cola[:tope][:valor] < cola4[:tope][:valor]
        if  cola[:tope][:valor] < cola2[:tope][:valor] && cola[:tope][:valor] < cola3[:tope][:valor] && cola[:tope][:valor] < cola4[:tope][:valor]
            puts cola[:tope][:valor]
          end
     puts '______________________________'
     if  cola3[:tope][:valor] < cola2[:tope][:valor] && cola3[:tope][:valor] < cola4[:tope][:valor]
        puts cola3[:tope][:valor]
      end
 puts '______________________________'
 if  cola4[:tope][:valor] < cola2[:tope][:valor]
    puts cola4[:tope][:valor]
  end
puts '______________________________'
puts cola2[:tope][:valor]
 puts '______________________________'

    end
    if cola2[:tope][:valor] < cola[:tope][:valor] && cola2[:tope][:valor] < cola3[:tope][:valor] && cola2[:tope][:valor] < cola4[:tope][:valor]
        if  cola2[:tope][:valor] < cola[:tope][:valor] && cola2[:tope][:valor] < cola3[:tope][:valor] && cola2[:tope][:valor] < cola4[:tope][:valor]
            puts cola2[:tope][:valor]
        end
     puts '______________________________'
     if  cola[:tope][:valor] < cola3[:tope][:valor] && cola[:tope][:valor] < cola4[:tope][:valor]
        puts cola[:tope][:valor]
      end
     puts '______________________________'
     if  cola4[:tope][:valor] < cola3[:tope][:valor]
        puts cola4[:tope][:valor]
      end
      puts '______________________________'
      puts cola3[:tope][:valor]
      puts '______________________________'
    end
    if cola2[:tope][:valor] < cola[:tope][:valor] && cola2[:tope][:valor] < cola3[:tope][:valor] && cola2[:tope][:valor] < cola4[:tope][:valor]
        if  cola2[:tope][:valor] < cola[:tope][:valor] && cola2[:tope][:valor] < cola3[:tope][:valor] && cola2[:tope][:valor] < cola4[:tope][:valor]
            puts cola2[:tope][:valor]
        end
     puts '______________________________'
     if  cola3[:tope][:valor] < cola[:tope][:valor] && cola3[:tope][:valor] < cola4[:tope][:valor]
        puts cola3[:tope][:valor]
      end
      puts '______________________________'
      if  cola[:tope][:valor] < cola4[:tope][:valor]
        puts cola[:tope][:valor]
      end
      puts '______________________________'
      puts cola4[:tope][:valor]
      puts '______________________________'
    end


end
def insertar (cola)
    limpiar

    print 'Inserte Un Numero: '
    n = gets.chomp.to_i
    elemento = {
        valor: n,
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
def insertar2 (cola2)
    limpiar

    print 'Inserte Un Numero: '
    n = gets.chomp.to_i
    elemento = {
        valor: n,
        siguiente: nil
    }

    if cola2[:esta_vacia] == true
        cola2[:tope] = elemento
        cola2[:fondo] = elemento
        cola2[:esta_vacia] = false
        cola2[:tamaño] = cola2[:tamaño] +1
    else

        aux = cola2[:fondo]
        aux[:siguiente] = elemento
        elemento[:siguiente] = nil

        cola2[:fondo] = elemento
        cola2[:tamaño] = cola2[:tamaño] +1
    end


end
def insertar3 (cola3)
    limpiar

    print 'Inserte Un Numero: '
    n = gets.chomp.to_i
    elemento = {
        valor: n,
        siguiente: nil
    }

    if cola3[:esta_vacia] == true
        cola3[:tope] = elemento
        cola3[:fondo] = elemento
        cola3[:esta_vacia] = false
        cola3[:tamaño] = cola3[:tamaño] +1
    else

        aux = cola3[:fondo]
        aux[:siguiente] = elemento
        elemento[:siguiente] = nil

        cola3[:fondo] = elemento
        cola3[:tamaño] = cola2[:tamaño] +1
    end


end
def insertar4 (cola4)
    limpiar

    print 'Inserte Un Numero: '
    n = gets.chomp.to_i
    elemento = {
        valor: n,
        siguiente: nil
    }

    if cola4[:esta_vacia] == true
        cola4[:tope] = elemento
        cola4[:fondo] = elemento
        cola4[:esta_vacia] = false
        cola4[:tamaño] = cola4[:tamaño] +1
    else

        aux = cola4[:fondo]
        aux[:siguiente] = elemento
        elemento[:siguiente] = nil

        cola4[:fondo] = elemento
        cola4[:tamaño] = cola2[:tamaño] +1
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
cola2 = {
    fondo: nil,
    tope: nil,
    max:-1,
    esta_vacia: true,
    tamaño:0,
    esta_llena: false
}
cola3 = {
    fondo: nil,
    tope: nil,
    max:-1,
    esta_vacia: true,
    tamaño:0,
    esta_llena: false
}
cola4 = {
    fondo: nil,
    tope: nil,
    max:-1,
    esta_vacia: true,
    tamaño:0,
    esta_llena: false
}


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
        limpiar
        puts "Ingrese los valores deseados, separandolos por una coma"
        a = gets.chomp.split(',').map{|n|n.to_i}
        tamaño = a.size
        gets
        limpiar
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
          opcion=0
while opcion != '10'
puts 'Listado de Opciones:'
puts '1.Inserta el elemento1'
puts '2.Inserta el elemento2'
puts '3.Inserta el elemento3'
puts '4.Inserta el elemento4'
puts '5. Ver primer elemento'
puts '6. Ver segundo elemento'
puts '7. Ver tercer elemento'
puts '8. Ver cuarto  elemento'
puts '9. Ordenamiento'
puts '10. Salir'
print 'Ingrese Opcion: '
opcion = gets.chomp
if opcion == '1'
    insertar(cola)
end
if opcion == '2'
    insertar2(cola2)
end
if opcion == '3'
    insertar3(cola3)
end
if opcion == '4'
    insertar4(cola4)
end
if opcion == '5'
    ver(cola)
end
if opcion == '6'
    ver2(cola2)
end
if opcion == '7'
    ver3(cola3)
end
if opcion == '8'
    ver4(cola4)
end
if opcion == '9'
    ordena(cola, cola2, cola3,cola4)
    ordenad(cola, cola2,cola3,cola4)
end
end

        elsif opc == 3
            #ordenar paso a paso lista
        else
            puts 'Ingrese nuevamente su opcion'
        end

    elsif opcion=='4'
        puts 'Fin del programa'
    end
end while opcion != '4'
