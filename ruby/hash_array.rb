# Roberto é um diretor de uma escola de música
# Ele precisa de um programa que tenha as seguintes opções
# 1 - Cadastrar aluno (nome, matricula, notas)
# 2 - Cadastrar nota de aluno
# 3 - Relatório das notas em média dos alunos 
# 4 - Sair
# Faça o programa em APP console utilizando loop, condicionais e array

# exerc07_hash_array.rb:9: warning: Insecure world writable dir /mnt/c in PATH, mode 040777

def menu
    puts "\nO que deseja fazer? \n\n"
    puts "(1) Cadastrar aluno (nome e matricula)"
    puts "(2) Cadastrar notas de aluno"
    puts "(3) Emitir relatório das notas e médias dos alunos"
    puts "(4) Alterar o nome do aluno"
    puts "(5) Sair"
    print "\nSelecione a opção: "
end

def nenhum_aluno_cadastrado
    puts "\n\n"
    puts "||||||||||||||||||||||||||||||||||||||"
    puts "|  Atenção! Nenhum aluno cadastrado! |"
    puts "||||||||||||||||||||||||||||||||||||||"
end

def sair_do_programa
    puts "+--------------- Você selecionou a opção 4 ----------------+"
    puts "|        Essa é a sua decisão de saída do programa         |"
    puts "|     A Equipe da Escola de Música do Roberto agradece     |"
    puts "+----------------------------------------------------------+"
    puts Time.now
    puts "\n"
    sleep 1
end

def opcao_nao_disponivel
    puts "||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||"
    puts "|||   Você selecionou uma opção que não está disponível  |||"
    puts "|||||||     Reinicie ou escolha a opção (4) Sair     |||||||" 
    puts "||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||"
end

def cadastrar_aluno
    aluno = {nome:"", matricula:"", notas:[]}
    puts "\n------ Você selecionou a opção 3 ------"
    puts "          CADASTRAR ALUNO"
    print "\nInforme o nome completo do aluno: "
    aluno[:nome]=gets.strip
    print "\nInforme a matrícula do aluno: "
    aluno[:matricula]=gets.to_i
    alunos.push(aluno)
    puts "\n======================================"
    puts "Você cadastrou os seguintes dados"
    puts "======================================"
    puts "Nome completo do aluno: #{aluno[:nome]}"
    puts "Matrícula do aluno: #{aluno[:matricula]}\n"
end

def cadastrar_nota_aluno
    puts "\n------ Você selecionou a opção 2 ------"
    puts "       CADASTRAR NOTA DE ALUNO"
    print "\nDigite a matrícula do aluno: "
    matricula = gets.to_i
    aluno_encontrado = false
    alunos.each do |a|
        if a[:matricula] == matricula
            aluno_encontrado = true
            print "\nInforme a nota do aluno: "
            nota=gets.to_f
            if nota < 0 or nota > 10
                puts "Nota inválida! Você deve escolher números entre 0 e 10"
                break
                # como sair do break sem a mensagem aluno não encontrado
            end

            a[:notas] << nota
        end
    end
    puts "=============================\nAluno não encontrado!\n=============================\n" unless aluno_encontrado
end

def relatorio
    puts "\n------ Você selecionou a opção 3 ------"
    puts "RELATÓRIO DE MÉDIAS E NOTAS DOS ALUNOS"
    if  alunos.length == 0
        nenhum_aluno_cadastrado
    else
        alunos.each do |aluno|
            puts "============================================================="
            puts "Matrícula: #{aluno[:matricula]}"
            puts "Nome do Aluno: #{aluno[:nome]}"
            if aluno[:notas].length > 0
                puts "Notas: #{aluno[:notas].join(", ")}"
                puts "Média: #{(aluno[:notas].sum.to_f / aluno[:notas].length.to_f)}"
            else
                puts "Aluno sem notas para avaliação"
            end
            #puts aluno
            # a média está sendo calculada errada
        end
    end
end

system 'clear'
require 'byebug'

puts "=============================================="
puts "Olá Equipe da Escola de Música do Roberto"
puts "=============================================="

opcao = 0
alunos = []

while opcao != 4 do
    menu
    opcao = gets.to_i
    case opcao
        when 1
            cadastrar_aluno
        when 2
            cadastrar_nota_aluno
        when 3
            relatorio
        when 5
            sair_do_programa
        else
            opcao_nao_disponivel
    end
    sleep 1
end