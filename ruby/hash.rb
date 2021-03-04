# Roberto é dono de uma faculdade
# Ele irá precisar organizar a grade do curso em alguns meses
# faça um programa que organize os dados do semestre da faculdade do Roberto
# o que teremos nesta organização, "nome da matéria", "temas até o mes 6" colocar
# nesta estrutura pelo menos 3 matérias

grade = [
  {
    nome: "matemática",
    meses: [
      "Mes 1 - Titulo",
      "Mes 2 - Titulo",
      "Mes 3 - Titulo",
      "Mes 4 - Titulo",
      "Mes 5 - Titulo",
      "Mes 6 - Titulo",
    ]
  },
  { 
    nome: "portugues",
    meses: [
      "Mes 1 - Titulo",
      "Mes 2 - Titulo",
      "Mes 3 - Titulo",
      "Mes 4 - Titulo",
      "Mes 5 - Titulo",
      "Mes 6 - Titulo",
    ]
  },
  {
    nome: "Ciencia",
    meses: [
      "Mes 1 - Titulo",
      "Mes 2 - Titulo",
      "Mes 3 - Titulo",
      "Mes 4 - Titulo",
      "Mes 5 - Titulo",
      "Mes 6 - Titulo",
    ]
  }
]

grade.each do |g|
  puts "Nome da matéria: #{g[:nome]}"
  puts "Titulo e meses: #{g[:meses].join(", ")}"
end
