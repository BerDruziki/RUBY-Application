# Função para exibir o menu da calculadora
def exibir_menu
    puts "Escolha a operação:"
    puts "1. Adição (+)"
    puts "2. Subtração (-)"
    puts "3. Multiplicação (*)"
    puts "4. Divisão (/)"
    puts "5. Sair"
  end
  
  # Função para realizar a adição
  def adicao(a, b)
    return a + b
  end
  
  # Função para realizar a subtração
  def subtracao(a, b)
    return a - b
  end
  
  # Função para realizar a multiplicação
  def multiplicacao(a, b)
    return a * b
  end
  
  # Função para realizar a divisão
  def divisao(a, b)
    if b == 0
      return "Erro: divisão por zero"
    else
      return a / b.to_f
    end
  end
  
  # Loop principal da calculadora
  loop do
    exibir_menu  # Mostra o menu
  
    # Obtém a escolha do usuário
    print "Opção: "
    opcao = gets
  
    # Verifica se a opção é nula ou vazia
    if opcao.nil? || opcao.chomp.empty?
      puts "Opção inválida. Tente novamente."
      next  # Pula para a próxima iteração do loop
    end
  
    opcao = opcao.chomp.to_i
  
    # Verifica a opção escolhida
    case opcao
    when 1
      print "Digite o primeiro número: "
      num1 = gets.chomp.to_f
      print "Digite o segundo número: "
      num2 = gets.chomp.to_f
      resultado = adicao(num1, num2)
      puts "Resultado: #{resultado}"
    when 2
      print "Digite o primeiro número: "
      num1 = gets.chomp.to_f
      print "Digite o segundo número: "
      num2 = gets.chomp.to_f
      resultado = subtracao(num1, num2)
      puts "Resultado: #{resultado}"
    when 3
      print "Digite o primeiro número: "
      num1 = gets.chomp.to_f
      print "Digite o segundo número: "
      num2 = gets.chomp.to_f
      resultado = multiplicacao(num1, num2)
      puts "Resultado: #{resultado}"
    when 4
      print "Digite o primeiro número: "
      num1 = gets.chomp.to_f
      print "Digite o segundo número: "
      num2 = gets.chomp.to_f
      resultado = divisao(num1, num2)
      puts "Resultado: #{resultado}"
    when 5
      puts "Saindo da calculadora..."
      break  # Sai do loop e termina o programa
    else
      puts "Opção inválida. Tente novamente."
    end
  
    puts "-" * 20  # Linha separadora para melhorar a legibilidade
  end