numeros = [] # Cria um array vazio para armazenar os números

3.times do |i| # Repete 3 vezes (para obter 3 números)
  print "Digite o #{i + 1}º número: "
  numero = gets.chomp.to_i # Lê o número digitado e o converte para inteiro
  numeros << numero # Adiciona o número ao array
end

puts "Números ao cubo:"
numeros.each { |num| puts num**3 } # Calcula e imprime o cubo de cada número
