require 'set'

# Exemplo Simples: Hash com um valor por chave (seu exemplo)
animais = { ave: 'Tucano', mamifero: 'Macaco', reptil: 'Lagartixa' }

puts "Hash inicial (simples): #{animais}"

# Adição de um novo animal (Create)
animais[:anfibio] = 'Sapo'
puts "\nApós adicionar anfíbio: #{animais}"

# Acesso a um valor (Read)
puts "\nO mamífero é: #{animais[:mamifero]}"

# Verificação da existência de uma chave
if animais.key?(:peixe)
  puts "\nPeixe existe no hash"
else
  puts "\nPeixe não existe no hash"
end

# Atualização de um valor (Update)
animais[:mamifero] = 'Baleia'
puts "\nApós atualizar mamífero: #{animais}"

# Iteração sobre o hash
puts "\nIterando sobre o hash:"
animais.each do |tipo, animal|
  puts "- #{tipo}: #{animal}"
end

# Remoção de um elemento (Delete)
animais.delete(:reptil)
puts "\nApós remover réptil: #{animais}"

# Outras operações úteis (seu exemplo)
puts "\nChaves do hash: #{animais.keys}"
puts "\nValores do hash: #{animais.values}"
puts "\nO hash está vazio? #{animais.empty?}"

# Mesclar dois hashes (seu exemplo)
outros_animais = { inseto: 'Formiga', aracnídeo: 'Aranha' }
animais_completos = animais.merge(outros_animais)
puts "\nApós mesclar: #{animais_completos}"


# Exemplo Complexo: Hash com múltiplos valores por chave (usando Sets)
animais_complexo = {
  ave: Set['Tucano', 'Arara', 'Pinguim'],
  mamifero: Set['Macaco', 'Leão', 'Elefante'],
  reptil: Set['Lagartixa', 'Cobra', 'Jacaré']
}

puts "\n\nAnimais (complexo): #{animais_complexo}"

# Adicionando um novo animal (com chave e valor únicos)
animais_complexo[:anfibio] = Set['Sapo']
puts "\nApós adicionar anfíbio: #{animais_complexo}"

# Adicionando um valor a uma chave existente
animais_complexo[:ave] << 'Gavião'
puts "\nApós adicionar gavião às aves: #{animais_complexo}"

# Acesso a um valor (convertendo o Set para Array)
puts "\nMamíferos: #{animais_complexo[:mamifero].to_a}" 

# Verificação da existência de um valor em uma chave
if animais_complexo[:mamifero].include?('Leão')
  puts "\nLeão existe na classe dos mamíferos"
else
  puts "\nLeão não existe na classe dos mamíferos"
end

# Atualização de um valor (Substituição completa)
animais_complexo[:mamifero] = Set['Tigre', 'Zebra', 'Canguru']
puts "\nApós atualizar mamíferos: #{animais_complexo}"

# Remoção de um valor de uma chave 
animais_complexo[:reptil].delete('Cobra')
puts "\nApós remover cobra dos répteis: #{animais_complexo}"

# Remoção de um elemento (chave e seus valores)
animais_complexo.delete(:anfibio)
puts "\nApós remover anfíbio: #{animais_complexo}"

# Iteração sobre o hash complexo
puts "\nIterando sobre o hash complexo:"
animais_complexo.each do |classe, animais_classe|
  puts "- #{classe}:"
  animais_classe.each do |animal| 
    puts "  - #{animal}"
  end
end
