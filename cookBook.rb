puts "Bem vindo ao My CookBook,seu organizador de receitas! \n\n"
 opcoes = 0
receitas = []
numero_receita = 0
while (opcoes != 3) do
    puts "MENU"
    puts "[1] Incluir uma receita"
    puts "[2] Ver todas as receitas"
    puts "[3] Sair"
    puts "\n\n"
    print "Digite a opção desejada: "    
    opcoes = gets().to_i
    puts
    if (opcoes == 1)   
        numero_receita = numero_receita + 1 
        puts "Opção escolhida: " + opcoes.to_s
        print "Digite o nome da sua nova receita: "
        print "Digite o modo de preparo: "
        print "Digite o tipo da receita:"
        descricao = gets().chomp()
        receita = "##{ numero_receita.to_s } - "  + descricao
        puts "Receita cadastrada: #{ receita } "
        receitas << receita
        
    elsif (opcoes == 2)
        if (receitas.length == 0)
            puts "Você não cadastrou nenhuma receita.Volte ao MENU e entre em incluir [1] \n\n"
        else
            puts "Suas receitas cadastradas: "
            puts  receitas
            puts
        end        
    elsif (opcoes == 3)
        puts "O My CookBook agradece,volte sempre!"        
    else
        puts "Favor inserir comandos ou [1] ou [2] ou [3]."
        puts
        puts
     end  
 end
