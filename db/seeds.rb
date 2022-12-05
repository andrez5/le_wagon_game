# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Choice.destroy_all
Buddy.destroy_all
Scene.destroy_all
Pc.destroy_all
User.destroy_all
puts "começando a seed vai explodir jaja💣"

#user
User.create(email: "teste@teste.com", password: "123123", nickname: "teste")

#create Buddy
buddy = Buddy.create(name: "Felipe", charisma: 10, money: 100, front_end: 10, back_end: 10, stamina: 10, luck: 10)

#create scenes
# dia1 = Scene.create(title: "Scene 1", story: "Você estava discutindo com a tartaruga para ver quem é mais veloz.", user: User.first, buddy: buddy )
# dia2 = Scene.create(title: "Scene 2", story: "A tartaruga começa a tirar vantagem e caçoar imitando uma galinha.", user: User.first, buddy: buddy )
# dia3 = Scene.create(title: "Scene 3", story: "Ja no dia da corrida voce sai disparado na frente e a tartaruga mal sai do lugar.Esta muito facil.", user: User.first, buddy: buddy )
# dia4 = Scene.create(title: "Scene 4", story: "Descansou demais e acabou caindo no sono a tartaruga te passou e ganhou a corrida.", user: User.first, buddy: buddy )
# dia5 = Scene.create(title: "Scene 5", story: "A tartaruga começa a tirar vantagem e caçoar imitando uma galinha.", user: User.first, buddy: buddy )
dia1_parte1 = Scene.create(title: "Cena 1", story: "Bem-vindo, #{@pc.pc_name}! Você decidiu entrar em um bootcamp. Parabéns!
  Amanhã você terá seu primeiro dia de aula, prepare-se!", user: current_user) # buddy: buddy)
dia1_parte2 = Scene.create(title: "Cena 2", story: "Você chegou na sala de aula e não conhece ninguém. Você:", user: current_user) # buddy: buddy)
dia1_parte3 = Scene.create(title: "Cena 3", story: "O professor está ensinando a fazer o set-up e você não entendeu bulhufas. Você:", user: current_user) # buddy: buddy)

#create choice
# Choice.create(scene: dia1, action: "desafia para uma corrida", charisma: 1, money: 10, front_end: 1, back_end: -1, stamina: 1, luck: 1)
# Choice.create(scene: dia1, action: "ignora e muda de assunto", charisma: -1, money: 10, front_end: -1, back_end: 1, stamina: 1, luck: -1)

# Choice.create(scene: dia2, action: "Vôce aceita o desafio.", charisma: 1, money: 10, front_end: 1, back_end: 1, stamina: 1, luck: -1)

# Choice.create(scene: dia3, action: "decide descansar", charisma: 1, money: 10, front_end: 1, back_end: 1, stamina: -1, luck: 1)
# Choice.create(scene: dia3, action: "continua correndo", charisma: 1, money: 10, front_end: -1, back_end: 1, stamina: 1, luck: 1)

# Choice.create(scene: dia4, action: "Perdeu a corrida FIM", charisma: 1, money: 10, front_end: 1, back_end: 1, stamina: -1, luck: 1)

# Choice.create(scene: dia5, action: "Ganhou a corrida FIM", charisma: 1, money: 10, front_end: -1, back_end: 1, stamina: 1, luck: 1)
Choice.create(scene: dia1_parte2, action: "puxa assunto com o colega ao lado", charisma: 2, money: 0, front_end: 0, back_end: 0, stamina: 0, luck: 0)
Choice.create(scene: dia1_parte2, action: "fica usando o celular até o início da aula.", charisma: -2, money: 0, front_end: 0, back_end: 0, stamina: 0, luck: 0)

Choice.create(scene: dia1_parte3, action: "Chama o Teacher Assistant pra te ajudar", charisma: 1, money: 0, front_end: 0, back_end: 0, stamina: 0, luck: 0)
Choice.create(scene: dia1_parte3, action: "Tenta resolver sozinho", charisma: -2, money: 0, front_end: 0, back_end: 0, stamina: -2, luck: 0)



#create pcs
Pc.create(pc_name: "Geronimo", gender: "neutro", age: 25, charisma: 10, money: 100, front_end: 10, back_end: 10, stamina: 10, luck: 10, scene: Scene.first, user: User.first)

puts "💥BOOOOOOM💥"
