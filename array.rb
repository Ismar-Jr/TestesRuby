livros = []

livros.push('1984', 'Admirável Mundo Novo')
livros.unshift('Mindfulness', 'Game of Thrones', 'Lords of Rings') # Insere no início
livros.insert(2, 'Iliada', 'Dom Quixote', 'Vidas Secas')

puts "O array tem #{livros.length} elementos:"
puts livros

puts "\nAcesso a elementos específicos:"
puts livros[0]        # Primeiro elemento
puts livros[-1]       # Último elemento
puts livros[2..4]     # Intervalo de elementos

livros[3] = 'O Hobbit'  # Atualiza um elemento

livros.pop             # Remove o último elemento
livros.delete_at(1)    # Remove o elemento na posição 1
livros.delete('Vidas Secas') # Remove a primeira ocorrência

puts "\nArray após as remoções:"
puts livros
