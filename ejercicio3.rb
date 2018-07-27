nombres = %w[Fernanda]
edades = [25]
comunas = %w[Santiago]
genero = %w[Femenino]

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
  nombre_nuevo = gets.chomp
  nombres.push(nombre_nuevo)
  puts 'Ingrese edad'
  edad_nueva = gets.chomp.to_i
  edades.push(edad_nueva)
  puts 'Ingrese comuna'
  comuna_nueva = gets.chomp
  comunas.push(comuna_nueva)
  puts 'Ingrese género (Masculino o Femenino)'
  genero_nuevo = gets.chomp
  genero.push(genero_nuevo)
  puts nombres
  puts edades
  puts comunas
  puts genero
elsif option == 2
  puts '¿Qué datos desea editar?'
  datos_deseados = gets.chomp
elsif option == 3
  puts '¿Qué persona desea eliminar?'
  print nombres
  eliminar = gets.chomp
  end
