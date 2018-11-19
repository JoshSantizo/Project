require 'rubygems'
require 'terminal-table/import'
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
def insertar_en_las_colas(cola,a,colaux)
  limpiar
for i in 0..a.size-1
  elemento = {
      valor: a[i],
      siguiente: nil
  }
  if cola[:esta_vacia] == true
      cola[:tope] = elemento
      cola[:fondo] = elemento
      cola[:esta_vacia] = false
      cola[:tamaño] = cola[:tamaño] +1
  elsif cola[:tamaño]==1
      colaux[:tope] = elemento
      colaux[:fondo] = elemento
      cola[:tamaño] = cola[:tamaño] +1
      colaux[:tamaño] = cola[:tamaño] +1
      c=elemento
  else
   # elemento_final = cola[:fondo]
   # elemento_final[:siguiente] = elemento
   # cola[:fondo] = elemento
  if cola[:tope][:valor]>elemento[:valor]
    if colaux[:fondo][:valor] > elemento[:valor]
      #puts "##########################"
      aux=colaux[:fondo]
      aux3=aux[:siguiente]
      aux[:siguiente]=elemento
      colaux[:fondo]=elemento
      elemento[:siguiente]=aux3
      aux2=cola[:tope]
      aux2[:siguiente]=colaux[:tope]
      cola[:tope]=aux2
    # puts "jjjjjjjj"
    # puts "##########################"
    elsif colaux[:tope][:valor] < elemento[:valor]
      #puts " ///////////////////// "
       aux=colaux[:tope]
      colaux[:tope]=elemento
      elemento[:siguiente]=aux
      aux2=cola[:tope]
      aux2[:siguiente]=colaux[:tope]
      cola[:tope]=aux2
     #puts " ///////////////////// "
    elsif colaux[:fondo][:valor]<elemento[:valor] && colaux[:tope][:siguiente][:valor] < elemento[:valor]
     # puts a[i]
      #puts "))))))))))))))))))"
       aux=colaux[:tope]
       aux2=aux[:siguiente]
       aux[:siguiente]=elemento
       elemento[:siguiente]=aux2
       colaux[:tope]=aux
      #puts "dato perdido"
      #puts "))))))))))))))))))"
      #puts cola[:tope]
      #puts cola[:fondo]
      #puts colaux[:tope]
      #puts colaux[:fondo]
      #puts elemento
      #puts "))))))))))))))))))"
    else
      #puts "***********************"
      #puts cola[:tope]
     # puts cola[:fondo]
     # puts colaux[:tope]
     # puts colaux[:fondo]
     # puts elemento
     # puts "************************"
    end
  elsif cola[:tope][:valor]<elemento[:valor]
    if cola[:tope][:valor]<elemento[:valor]
     # puts "++++++"
     # puts "el nuuuummeeerooo"
     # puts a[i]
     # puts "++++++"
      if elemento[:valor] < colaux[:tope] [:valor]
      #    puts "llllllllllllllllllllllllll"
           ll=cola[:tope]
           ll2=colaux[:tope]
          elemento
           elemento[:siguiente]=ll
          cola[:tope]=ll2
          ll2[:siguiente]=elemento
          colaux[:tope]=ll2
          #puts "llllllllllllllllllllllllll"
      else
        #  puts "oooooooooooooooooooooooooooo"
      #puts ll=cola[:tope]
      #puts ll[:siguiente]=colaux[:tope]
      #puts colaux[:tope]=ll
       aux=elemento
       aux[:siguiente]=colaux[:tope]
       cola[:tope]=aux
       cola[:fondo]=aux
      #puts "oooooooooooooooooooooooooooo"
      end
      #puts colaux[:tope]=ll
      #puts aux=elemento
      #puts aux[:siguiente]=colaux[:tope]
      #puts cola[:tope]=aux
     # puts cola[:fondo]=aux
     # puts "++++++"
    elsif cola[:tope][:valor]>elemento[:valor]
      puts "&&&&&&&&&&&&&&&&"
      puts "dato perdido"
      puts "&&&&&&&&&&&&&&&&&"
    end
  end
end
end
puts "cola original"
puts cola[:fondo]
#puts "cola 1"
#puts colaux[:fondo]
#puts "tope de colaux"
#puts colaux[:tope][:valor]
#puts "tope de cola"
#puts cola[:tope][:valor]
end

colaux = {
  fondo: nil,
  tope: nil,
  tamaño:0
}
colaux2 = {
  fondo: nil,
  tope: nil,
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
def obtener_posicion(lista, valor)
    i = 0
    aux = lista[:tope]
    loop do
      if aux[:valor] == valor
        break
      elsif aux[:siguiente].nil?
        i = nil
        break
      end
      i += 1
      aux = aux[:siguiente]
    end
    return i
end

def obtener_nodo(lista, posicion)
    nodo = nil
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
def obtener_valor(lista, posicion)
    nodo = nil
    i = 0
    aux = lista[:tope][:valor]
    loop do
        if i == posicion
            valor = aux
            return valor
        end
        if aux[:siguiente] == nil
            break
        end
        i += 1
        aux = aux[:siguiente]
    end
    return valor
end

def ordenar_lista(lista, a)
    for i in 0..(a.size - 1) do
        nodo = {
            valor: a[i],
            siguiente: nil
        }
        posicion = obtener_posicion(lista, a[i])
        posicion_anterior = obtener_posicion(lista, a[i-1])
        nod = obtener_nodo(lista, posicion)
        nod_anterior = obtener_nodo(lista, (posicion-1))
        nod_siguiente = obtener_nodo(lista, (posicion+1))
        val = obtener_valor(lista, posicion)
        val_anterior = obtener_valor(lista, (posicion-1))
        if lista[:tope] == nil && lista[:final] == nil
            lista[:tope] = nodo
            lista[:final] = nodo
            lista[:vacia] = false
            lista[:size] += 1

        elsif lista[:size] >= 1  #insertar entre numeros
            aux = lista[:tope]
            loop do
                if val < val_anterior && posicion_anterior == nil 
                    lista[:tope] = nodo
                    nodo = nod_siguiente
                    lista[:size] += 1
                    break
                elsif val < val_anterior 
                    nod_anterior = nodo
                    nodo = nod_siguiente
                    lista[:size] += 1
                    break
                elsif valor > val_anterior
                    nod_anterior = nodo
                    nodo = nil
                    lista[:final] = nodo
                    break
                end
                aux = aux[:siguiente]
            end
            
        end
    end
    
end
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
        insertar_en_las_colas(cola,a,colaux)
        tamaño = a.size
        gets
        limpiar
    elsif opcion=='2'
       #Mostrar los datos de forma asendente en diferente estructura
       puts "Los datos de la cola"
      mostrar_cola(cola)
    elsif opcion=='3'
        limpiar
        puts '1. Mostrar Pila'
        puts '2. Mostrar Cola'
        puts '3. Mostrar Lista'
        puts '5.Resumen'
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
            #puts 'Ingrese nuevamente su opcion'
             opc == '5'
            $Pasos_pila = rows.size
            #puts 'Ingrese nuevamente su opcion'
            puts 'RESUMEN'
            puts 'Cantidad de Pasos:'
            #puts rows.size
            puts 'El Ordenamiento necesito:'
            puts '-2 Pilas Menores'
            puts '-2 Pilas Mayores'
            puts 'Para ser unidas en una Pila central'
            #puts $Pasos_pila
            puts 'Al ser ingresado el arreglo de numeros '
            puts 'Estos fueron clasificados en las diferentes pilas que hubieron'
            puts 'Por medio de sus requisitos establecidos'
            puts 'Para poder ser llamados para los diferentes pasos requeridos para el ordenamiento '
            puts 'Al ser sometidos a una serie de instrucciones, comprobando que hayan seguido las instruciones estos son ordenados'
            puts 'Para ser mostrados de forma Ascendente/Descendente '
            puts 'RESUMEN'
            puts 'COLAS'
            puts 'Se crearon 4 pilas en cada una se almacenadan los datos'
            puts 'Estos fueron llamados uno por uno para ser comparados con otros'
            puts 'Asi ir cumpliendo una serie de intruciones'
            puts 'Y poder ser ordenados de forma Ascdente/Descendente'
            puts 'Poder ser mostrados ya ordenados'

        end

    elsif opcion=='4'
        puts 'Fin del programa'
    end
end while opcion != '4'
