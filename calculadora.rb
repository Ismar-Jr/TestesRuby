puts '#Bem-vindo a nossa calculadora'
puts '#Escolha a operação que deseja usar'

def calcular(operador, num1, num2)
    case operador
    when 1
      num1 + num2
    when 2
      num1 - num2
    when 3
      num1 * num2
    when 4
      num2 != 0 ? num1 / num2 : "Erro: Divisão por zero"
    end
  end
  
  loop do
    puts "\nCalculadora Ruby"
    puts "1. Adição (+)"
    puts "2. Subtração (-)"
    puts "3. Multiplicação (*)"
    puts "4. Divisão (/)"
    puts "0. Sair"
  
    print "Escolha uma opção: "
    opcao = gets.chomp.to_i
  
    if opcao == 0
      break
    elsif opcao < 1 || opcao > 4
      puts "Operador inválido. Tente novamente."
      next
    end
  
    print "Digite o primeiro número: "
    num1 = gets.chomp.to_f
    print "Digite o segundo número: "
    num2 = gets.chomp.to_f
  
    resultado = calcular(opcao, num1, num2)
    puts "Resultado: #{resultado}"
  end
  