#! /usr/local/rvm/rubies/ruby-2.0.0-p247/bin/ruby


# DATOS
a = Array.new
b = Array.new

suma = Array.new  # Resultado suma
mult = Array.new  # Resultado multiplicación



# Interacción con el usuario (pedir datos)
puts "Introducir tamaño (matriz cuadrada): "
m = gets.to_i
n = m

puts "Datos matriz a: "
for i in 0...m do
    a[i] = Array.new
    for j in 0...n do
        puts "Introducir elemento a[#{i}][#{j}]: "
        a[i][j] = gets.to_i
    end
end

puts "Datos matriz b: "
for i in 0...m do
    b[i] = Array.new
    for j in 0...n do
        puts "Introducir elemento b[#{i}][#{j}]: "
        b[i][j] = gets.to_i
    end
end

# m,n = a.size,a[1].size 

# Dar tamaño a matrices resultado e inicializarlas a 0
for i in 0...m do
    suma[i] = Array.new
    mult[i] = Array.new
    for j in 0...n do
        suma[i][j] = 0
        mult[i][j] = 0
    end
end

########
# SUMA #
########

for i in 0...m do
	for j in 0...n do
		suma[i][j] = a[i][j] + b[i][j]
	end
end

############
# PRODUCTO #
############

for i in 0...m do
    for j in 0...n do
        for k in 0...m do
            mult[i][j] = mult[i][j] + (a[i][k]  * b[k][j])
        end
    end
end

# Mostrar matrices

puts "\n Matriz a: "
a.each do |fila|
    puts fila.join(" ")
end

puts "\n Matriz b: "
b.each do |fila|
    puts fila.join(" ")
end

puts "\n Suma (a+b): "
suma.each do |fila|
    puts fila.join(" ")
end 

puts "\n Multiplicación (a+b): "
mult.each do |fila|
    puts fila.join(" ")
end
