nomes = ["Ana", "João", "Maria"]
4.times do |i|
  if i < nomes.length
    puts "Nome: #{nomes[i]}"
  else
    puts "Sem mais nomes"
  end
end
