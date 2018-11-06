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
begin
puts "Bienvenido al programa para ordenar numeros de diferentes formas"
puts "Seleccione el número de la opcion deseada"
puts "1. Ingreso de numeros"
puts "2. Mostrar datos ordenados de forma asendente"
puts "3. Eliminar dato"
puts "4. Seleccione la estructura para el ingreso de datos"
puts "5. Mostrar los datos en forma asendente paso por paso"
puts "6. Salir"
opcion=gets.chomp
if opcion== '1'
    #Ingreso de numeros en todas las estructuras
elsif opcion=='2'
    #Mostrar los datos de forma asendente en diferente estructura
    puts "1. Listado asendente en una pila"
    puts "2. Listado asendente en una cola"
    puts "3. Listado asendente en una lista"
    puts "4. Regresar"
    opcion=gets.chomp
    if opcion=='1'
        #mostrar de forma asendente los datos de la pila
    elsif opcion=='2'
        #mostrar de forma asendente los datos de la cola
    elsif opcion=='3'
        #mostrar de forma asendente los datos de la lista
    elsif opcion=='4'
        #regresar
    end
elsif opcion=='3'
    #Eliminiar el valor que desee el usuario de cada estructura
elsif opcion=='4'
    #Ingreso de datos en la estructura que desee el usuario
    puts "1. Ingreso de datos en una pila"
    puts "2. Ingreso de datos en una cola"
    puts "3. Ingreso de datos en una lista"
    puts "4. Regresar"
    opcion=gets.chomp
    if opcion=='1'
        #ingreso de datos por  medio de una pila
    elsif opcion=='2'
        #ingreso de datos por medio de una cola
    elsif  opcion=='3'
        puts "1. Ingresar datos antes"
        puts "2. Ingresar datos despues"
        opcion=gets.chomp
        #ingreso de datos por medio de una lista
        if opcion=='1'
            #Ingreso antes
        elsif opcion=='2'
            #ingreso despues
        end
    elsif opcion=='4'
       # regresar
    end
elsif opcion=='5'
    #mostrar los datos en forma asendente , paso por paso
end
end while opcion != '6'