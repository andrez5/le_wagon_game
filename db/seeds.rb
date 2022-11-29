# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "começando a seed vai explodir jaja💣"

#user
User.create(email: "teste@teste.com", password: "123123", nickname: "teste")

#create Buddy
buddy = Buddy.create(name: "Felipe", charisma: 10, money: 100, front_end: 10, back_end: 10, stamina: 10, luck: 10)

#create scenes
dia1 = Scene.create(title: "Dia 1", story: "Você um belo dia se depara com dois caminhos qual voce vai seguir?", user: User.first, buddy: buddy )
dia2 = Scene.create(title: "Dia 2", story: "Você um belo dia se depara com dois caminhos qual voce vai seguir?", user: User.first, buddy: buddy )
dia3 = Scene.create(title: "Dia 3", story: "Você um belo dia se depara com dois caminhos qual voce vai seguir?", user: User.first, buddy: buddy )
Scene.create(title: "Dia 4", story: "Você chegou ao final parabais!!!", user: User.first, buddy: buddy)

#create choice
Choice.create(scene: dia1, action: "direita", charisma: 1, money: 10, front_end: 1, back_end: 1, stamina: 1, luck: 1)
Choice.create(scene: dia1, action: "esquerda", charisma: 1, money: 10, front_end: 1, back_end: 1, stamina: 1, luck: 1)

Choice.create(scene: dia2, action: "direita", charisma: 1, money: 10, front_end: 1, back_end: 1, stamina: 1, luck: 1)
Choice.create(scene: dia2, action: "esquerda", charisma: 1, money: 10, front_end: 1, back_end: 1, stamina: 1, luck: 1)

Choice.create(scene: dia3, action: "direita", charisma: 1, money: 10, front_end: 1, back_end: 1, stamina: 1, luck: 1)
Choice.create(scene: dia3, action: "esquerda", charisma: 1, money: 10, front_end: 1, back_end: 1, stamina: 1, luck: 1)

#create pcs
Pc.create(pc_name: "Geronimo", gender: "neutro", age: 25, charisma: 10, money: 100, front_end: 10, back_end: 10, stamina: 10, luck: 10, scene: Scene.first)

puts "💥BOOOOOOM💥"
