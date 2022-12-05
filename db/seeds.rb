# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "começando a seed vai explodir jaja💣"
Choice.destroy_all
Buddy.destroy_all
Scene.destroy_all
Pc.destroy_all
User.destroy_all

#user
User.create(email: "teste@teste.com", password: "123123", nickname: "teste")

#create Buddy
buddy = Buddy.create(name: "Felipe", charisma: 10, money: 100, front_end: 10, back_end: 10, stamina: 10, luck: 10)

#create scenes
dia1 = Scene.create(title: "Scene 1", story: "Você estava discutindo com a tartaruga para ver quem é mais veloz.", user: User.first, buddy: buddy )
dia2 = Scene.create(title: "Scene 2", story: "A tartaruga começa a tirar vantagem e caçoar imitando uma galinha.", user: User.first, buddy: buddy )
dia3 = Scene.create(title: "Scene 3", story: "Ja no dia da corrida você sai disparado na frente e a tartaruga mal sai do lugar. Está muito fácil.", user: User.first, buddy: buddy )
dia4 = Scene.create(title: "Scene 4", story: "Descansou demais e acabou caindo no sono. A tartaruga te passou e ganhou a corrida.", user: User.first, buddy: buddy )
dia5 = Scene.create(title: "Scene 5", story: "Parabéns, você ganhou a corrida.", user: User.first, buddy: buddy )


#create choice
Choice.create(scene: dia1, next_scene_id: 3, action: "Desafia para uma corrida", charisma: 1, money: 10, front_end: 1, back_end: -1, stamina: 1, luck: 1)
Choice.create(scene: dia1, next_scene_id: 2, action: "Ignora e muda de assunto", charisma: -1, money: 10, front_end: -1, back_end: 1, stamina: 1, luck: -1)

Choice.create(scene: dia2, next_scene_id: 3, action: "Você aceita o desafio", charisma: 1, money: 10, front_end: 1, back_end: 1, stamina: 1, luck: -1)

Choice.create(scene: dia3, next_scene_id: 4, action: "Decide descansar", charisma: 1, money: 10, front_end: 1, back_end: 1, stamina: -1, luck: 1)
Choice.create(scene: dia3, next_scene_id: 5, action: "Continua correndo", charisma: 1, money: 10, front_end: -1, back_end: 1, stamina: 1, luck: 1)

#create pcs
Pc.create(pc_name: "Geronimo", gender: "neutro", age: 25, charisma: 10, money: 100, front_end: 10, back_end: 10, stamina: 10, luck: 10, scene: Scene.first, user: User.first)

puts "💥BOOOOOOM💥"
