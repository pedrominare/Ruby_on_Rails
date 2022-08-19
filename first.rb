# verificador de senhas

# definindo a funcao de verificacao de senha
def verificaSenha(senha)
    senhaMinuscula = senha.downcase
    if (senhaMinuscula == senha)
        "Sua senha não possui letra maiúscula !"
    elsif (!senhaMinuscula.gsub!(/[^0-9A-Za-z]/, ''))
        "Sua senha precisa de pelo menos um caracter especial !"
    else
        "SENHA VÁLIDA !"
    end
end

# definindo a funcao do painel de usuario
def painel
    loop do
        puts "[-- INSIRA A SENHA A SER AVALIADA:  (digite 'sair' caso queira encerrar o programa)"
        password = gets.strip # tira espaços em branco e linhas em branco da string.
        if (password == "sair")
            puts "BYE BYE."
            break
        else
            puts verificaSenha(password)
        end
    end
end

# execucao do programa
painel