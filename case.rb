#analisar diversos casos
#permitir que o usuário entre com esse dado

puts 'Digite o mês de nascimento: '
mes = gets.chomp.to_i

# Definir casos
case mes
when 1..3  # Primeiro trimestre
  puts 'Você nasceu no primeiro trimestre do ano.'
when 4..6  # Primeiro Semestre
  puts 'Você nasceu no primeiro semestre do ano.'
when 7..9  # Terceiro trimestre
  puts 'Você nasceu no terceiro trimestre do ano.'
when 10..12  # Segundo Semestre
  puts 'Você nasceu no segundo semestre do ano.'
else
  puts 'Mês inválido. Por favor, digite um número de 1 a 12.'
end
