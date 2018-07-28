info = {}
info["FERNANDA"] = [25, "SANTIAGO", "FEMENINO"]
info["LEONARDO"] = [37, "SANTIAGO", "MASCULINO"]
info["FULANITO"] = [30, "LO PRADO", "MASCULINO"]
option = -1
while option != 10 do
  puts 'Bienvenido al menú'
  puts 'Ingrese el número de su opción'
  puts '1 ingresar datos'
  puts '2 editar datos'
  puts '3 quitar a una persona de la lista'
  puts '4 ver cantidad de personas ingresadas'
  puts '5 ver comunas'
  puts '6 ver lista de integrantes entre 20 y 25 años'
  puts '7 ver suma de edades del grupo'
  puts '8 promedio edad del grupo'
  puts '9 ver lista de personas por género'
  puts '10 para salir'
  option = gets.chomp.to_i
  if option == 1
    puts 'Ingrese nombre'
    nombre_nuevo = gets.chomp.upcase
    puts 'Ingrese edad'
    edad_nueva = gets.chomp.to_i
    puts 'Ingrese comuna'
    comuna_nueva = gets.chomp.upcase
    puts 'Ingrese género (Masculino o Femenino)'
    genero_nuevo = gets.chomp.upcase
    while genero_nuevo != 'femenino'.upcase && genero_nuevo != 'masculino'.upcase
      puts 'Ingrese género nuevamente'
      genero_nuevo = gets.chomp.upcase
    end
    info[nombre_nuevo] = [edad_nueva,comuna_nueva,genero_nuevo]
    puts "Los datos ingresados son: #{nombre_nuevo}, #{edad_nueva}, #{comuna_nueva}, #{genero_nuevo}."

    elsif option == 2
    puts '¿Los datos de qué usuario desea editar? (ingrese nombre)'
    datos_deseados = gets.chomp.upcase
      if info.include? datos_deseados
      puts "Va a editar los datos de " + datos_deseados
      puts "Ingrese nombre (Nombre actual #{datos_deseados})"
      nombre_nuevo = gets.chomp.upcase
      puts "Ingrese edad (Edad actual #{info[datos_deseados][0]})"
      edad_nueva = gets.chomp.to_i
      puts "Ingrese comuna (Comuna actual #{info[datos_deseados][1]})"
      comuna_nueva = gets.chomp.upcase
      puts "Ingrese género (Masculino o Femenino) (Género actual #{info[datos_deseados][2]})"
      genero_nuevo = gets.chomp.upcase
      while genero_nuevo != 'femenino'.upcase && genero_nuevo != 'masculino'.upcase
        puts 'Ingrese género nuevamente'
        genero_nuevo = gets.chomp.upcase
      end
      puts 'Sus datos fueron modificados'
      puts "Sus nuevos datos son: #{nombre_nuevo}, #{edad_nueva}, #{comuna_nueva}, #{genero_nuevo}."
      info.delete(datos_deseados)
      info[nombre_nuevo] = [edad_nueva,comuna_nueva,genero_nuevo]
      else
        puts 'El usuario ingresado no existe.'
      end
    elsif option == 3
    puts '¿A qué persona desea eliminar de los registros?'
    puts info.keys
    eliminar = gets.chomp.upcase
      if info.include? eliminar
        info.delete(eliminar)
        puts 'El usuario fue eliminado exitosamente.'
      else
        puts 'El usuario ingresado no existe.'
      end
    elsif option == 4
    puts "En este momento existen #{info.keys.count} usuarios ingresados."
    elsif option == 5
    comunas = {}
      info.values.each do |i|
        comunas[i[1]]=1
      end
    puts "Las comunas ingresadas en el sistema son: #{comunas.keys}"
    elsif option == 6
      info.keys.each do |key|
        if info[key][0] >= 20 && info[key][0] <= 25
          puts "#{key} tiene #{info[key][0]} años."
        end
      end
    elsif option == 7
      edades = []
      info.keys.each do |key|
        edades.push(info[key][0])
      end
      suma_edades = edades.inject(0) { |sum, x| sum + x }
      puts "La suma de todas las edades registradas es de #{suma_edades} años."
    elsif option == 8
      edades = []
      info.keys.each do |key|
        edades.push(info[key][0])
        suma_edades = edades.inject(0) { |sum, x| sum + x }
      end
      promedio_edades = suma_edades/info.keys.count
      puts "El promedio de las edades registradas es de #{promedio_edades} años."
    elsif option == 9
      mujeres = []
      hombres = []
      info.keys.each do |key|
        if info[key][2] == 'femenino'.upcase
        mujeres.push(key)
        else
        hombres.push(key)
        end
      end
      puts 'Mujeres:'
      puts mujeres
      puts 'Hombres:'
      puts hombres
  end
end
