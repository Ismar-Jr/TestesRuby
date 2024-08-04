numeros = [1,5,8,9,6]

novos_numeros = numeros.map do |x|
    x * 5
end

puts "\n Array Original"
puts numeros

puts "\n Novo array"
puts novos_numeros

puts "\n Array com .map! para forçar a modificação do array original"
numeros.map! do |x|
    x*2
end

puts numeros