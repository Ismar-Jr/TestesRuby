require 'set'

# Criação do hash de times de futebol
times_de_futebol = {
  brasil: Set['Flamengo', 'Palmeiras', 'Corinthians', 'São Paulo'],
  argentina: Set['Boca Juniors', 'River Plate', 'Independiente', 'Racing'],
  italia: Set['Juventus', 'Milan', 'Internazionale', 'Roma'],
  alemanha: Set['Bayern de Munique', 'Borussia Dortmund', 'RB Leipzig', 'Schalke 04'],
  espanha: Set['Real Madrid', 'Barcelona', 'Atlético de Madrid', 'Valencia'],
  inglaterra: Set['Manchester United', 'Liverpool', 'Manchester City', 'Chelsea'],
  franca: Set['Paris Saint-Germain', 'Olympique de Marseille', 'Olympique Lyonnais', 'AS Monaco']
}

puts "Hash inicial de times de futebol:\n#{times_de_futebol}"

# Adição de um novo time (Create)
times_de_futebol[:brasil] << 'Santos'
puts "\nApós adicionar o Santos ao Brasil: #{times_de_futebol[:brasil]}"

# Adição de um novo país e seus times
times_de_futebol[:portugal] = Set['Benfica', 'Porto', 'Sporting CP']
puts "\nApós adicionar Portugal: #{times_de_futebol}"

# Acesso a um valor (Read)
puts "\nTimes da Argentina: #{times_de_futebol[:argentina].to_a}"

# Verificação da existência de uma chave
if times_de_futebol.key?(:holanda)
  puts "\nHolanda existe no hash"
else
  puts "\nHolanda não existe no hash"
end

# Verificação da existência de um valor em uma chave
if times_de_futebol[:inglaterra].include?('Arsenal')
  puts "\nO Arsenal está na lista de times da Inglaterra"
else
  puts "\nO Arsenal não está na lista de times da Inglaterra"
end

# Atualização de um valor (Update) - Substituição completa
times_de_futebol[:espanha] = Set['Real Madrid', 'Barcelona', 'Sevilla', 'Villarreal']
puts "\nApós atualizar os times da Espanha: #{times_de_futebol[:espanha]}"

# Remoção de um valor de uma chave (Update)
times_de_futebol[:italia].delete('Roma')
puts "\nApós remover a Roma da Itália: #{times_de_futebol[:italia]}"

# Remoção de um país e seus times (Delete)
times_de_futebol.delete(:franca)
puts "\nApós remover a França: #{times_de_futebol}"

# Iteração sobre o hash
puts "\nIterando sobre os times de futebol:"
times_de_futebol.each do |pais, times|
  puts "- #{pais}:"
  times.each do |time|
    puts "  - #{time}"
  end
end

# Outras operações úteis

# Obter todas as chaves (países)
puts "\nPaíses com times no hash: #{times_de_futebol.keys}"

# Obter todos os valores (times como Sets)
puts "\nTimes de futebol (Sets): #{times_de_futebol.values}"

# Verificar se o hash está vazio
puts "\nO hash está vazio? #{times_de_futebol.empty?}"

# Mesclar dois hashes (mantendo a unicidade dos valores com Sets)
outros_times = { 
  belgica: Set['Club Brugge', 'Anderlecht'],
  holanda: Set['Ajax', 'PSV Eindhoven']
}
times_de_futebol_completos = times_de_futebol.merge(outros_times) { |key, old_val, new_val| old_val + new_val }
puts "\nApós mesclar: #{times_de_futebol_completos}"
