# analise um dia da semana e analise se é domingo
# Se for domingo, diga que o almoço será especial

dia = 'feriado'
if dia == 'domingo'
    almoco = 'especial'
elsif dia == 'feriado'
    almoco = 'mais tarde'
else
    almoco = 'normal'
end

puts "Hoje nosso almoço sera #{almoco}"