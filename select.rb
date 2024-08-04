# 1. Filtrando um Array de Números (simples): Busca os números pares
numeros = [5, 12, 8, 18, 3]
pares = numeros.select { |num| num.even? }
puts "Números pares: #{pares}"

# 2. Filtrando um Hash (intermediário): Busca informações da pessoa, exceto a idade
pessoa = { nome: "João", idade: 25, cidade: "Rio de Janeiro" }
dados_pessoais = pessoa.select { |chave, valor| chave != :idade }
puts "Dados pessoais (sem idade): #{dados_pessoais}"

# 3. Filtrando um Array de Hashes (intermediário): Busca produtos em estoque
produtos = [
  { nome: "Camisa", preco: 39.90, em_estoque: true },
  { nome: "Calça", preco: 59.90, em_estoque: false },
  { nome: "Tênis", preco: 89.90, em_estoque: true }
]
disponiveis = produtos.select { |produto| produto[:em_estoque] }
puts "Produtos disponíveis: #{disponiveis}"

# 4. Usando Múltiplas Condições (avançado): Busca pessoas com mais de 30 anos e que não são engenheiros
pessoas = [
  { nome: "Ana", idade: 32, profissao: "Médica" },
  { nome: "Carlos", idade: 28, profissao: "Engenheiro" },
  { nome: "Maria", idade: 45, profissao: "Professora" }
]
filtro = pessoas.select { |pessoa| pessoa[:idade] > 30 && pessoa[:profissao] != "Engenheiro" }
puts "Pessoas com mais de 30 anos e que não são engenheiros: #{filtro}"

# 5. Combinando com Outros Métodos (avançado): Busca frutas com 'a' e as coloca em maiúsculo
frutas = ["Maçã", "Coco", "Banana", "Pessego", "Pera", "Uva"]
# Padroniza todas as frutas para maiúsculas
frutas_upcase = frutas.map(&:upcase)
# Seleciona frutas que contêm a letra 'A'
frutas_com_a = frutas_upcase.select { |fruta| fruta.include?("A") }
puts "Frutas com 'a' : #{frutas_com_a}"


# 6. Filtrando com Regex (avançado): Busca emails válidos
emails = ["joao@email.com", "maria_silva@empresa.com.br", "contato@site.org"]
emails_validos = emails.select { |email| email =~ /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i }
puts "Emails válidos: #{emails_validos}"

# 7. Filtrando Hashes Aninhados (complexo): Busca pedidos de clientes VIP
pedidos = [
  { id: 1, cliente: { nome: "João", vip: true }, total: 150.0 },
  { id: 2, cliente: { nome: "Maria", vip: false }, total: 80.0 },
  { id: 3, cliente: { nome: "Ana", vip: true }, total: 200.0 }
]
pedidos_vip = pedidos.select { |pedido| pedido[:cliente][:vip] }
puts "Pedidos de clientes VIP: #{pedidos_vip}"
