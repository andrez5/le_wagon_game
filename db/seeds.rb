puts "começando a seed vai explodir, já já💣"

############### DESTRUINDO #####################

Choice.destroy_all
Buddy.destroy_all
Scene.destroy_all
Pc.destroy_all
User.destroy_all

############### USUARIO #####################

# user
User.create(email: "teste@teste.com", password: "123123", nickname: "teste")

# create Buddy
buddy = Buddy.create(name: "Felipe", charisma: 10, money: 100, front_end: 10, back_end: 10, stamina: 10)

############### CENAS #####################

# dia 1
dia1_parte1 = Scene.create(title: "Dia 1 - Cena 1", story: "Bem-vindo, nome do jogador! Você decidiu entrar em um bootcamp. Parabéns! Hoje é o seu primeiro dia de aula, prepare-se!", user: User.first, buddy: buddy, npc_name: "Roberto")
dia1_parte2 = Scene.create(title: "Dia 1 - Cena 2", story: "Você chegou na sala de aula e não conhece ninguém. Você...", user: User.first, buddy: buddy, npc_name: "Roberto")
dia1_parte3 = Scene.create(title: "Dia 1 - Cena 3", story: "O professor está ensinando a fazer o set-up e você não entendeu bulhufas. Você...", user: User.first, buddy: buddy, npc_name: "Roberto")
dia1_parte4 = Scene.create(title: "Dia 1 - Cena 4", story: "Você quebrou a cabeça pra fazer sozinho e ainda assim não resolveu o setup.", user: User.first, buddy: buddy, npc_name: "Roberto")
dia1_parte5 = Scene.create(title: "Dia 1 - Cena 5", story: "Finalmente chegou a hora do almoço. Você decide...", user: User.first, buddy: buddy, npc_name: "Roberto")
dia1_parte6 = Scene.create(title: "Dia 1 - Cena 6", story: "Após muita luta, você consegue deixar o computador pronto para realizar os exercícios. Você decide...", user: User.first, buddy: buddy, npc_name: "Roberto")

# dia 2
dia2_parte7 = Scene.create(title: "Dia 2 - Cena 1", story: "Após um primeiro dia, achando que já teria aprendido sobre código, você chega cedo e...", user: User.first, buddy: buddy, npc_name: "Dudu")
dia2_parte8 = Scene.create(title: "Dia 2 - Cena 2", story: "O professor está explicando sobre Ruby e você...", user: User.first, buddy: buddy, npc_name: "Davis")
dia2_parte9 = Scene.create(title: "Dia 2 - Cena 3", story: "Horário do almoço. Você decide:", user: User.first, buddy: buddy, npc_name: "Fernanda")
dia2_parte10 = Scene.create(title: "Dia 2 - Cena 4", story: "Hora de aplicar seus conhecimentos na prática. Os exercícios estão bem difíceis hoje, você decide...", user: User.first, buddy: buddy, npc_name: "Alecio2")
dia2_parte11 = Scene.create(title: "Dia 2 - Cena 5", story: "O professor quer fazer um exercício com o apoio da classe e você é o sorteado pra escrever o código na frente de todos.", user: User.first, buddy: buddy, npc_name: "Roberto")

# dia 3
dia3_parte12 = Scene.create(title: "Dia 3 - Cena 1", story: "Você já tem seu colega preferido ao ver que tem lugar ao lado dele, você decide...", user: User.first, buddy: buddy, npc_name: "Michel")
dia3_parte13 = Scene.create(title: "Dia 3 - Cena 2", story: "As coisas começam a ficar complicadas com o desafio do dia: montar Cookbook!", user: User.first, buddy: buddy, npc_name: "Roberto")
dia3_parte14 = Scene.create(title: "Dia 3 - Cena 3", story: "Querendo economizar, você leva marmita para o almoço. Na fila do microondas, você percebe que a sua marmita é a única congelada. Você decide...", user: User.first, buddy: buddy)
dia3_parte15 = Scene.create(title: "Dia 3 - Cena 4", story: "O dia está quente e você sente muito calor. Algumas pessoas estão espirrando em um ambiente fechado. Você decide...", user: User.first, buddy: buddy, npc_name: "Felipe")

# dia 4
dia4_parte16 = Scene.create(title: "Dia 4 - Cena 1", story: "Você acorda se sentindo indisposto. Com novos casos de Covid na classe, você...", user: User.first, buddy: buddy)
dia4_parte17 = Scene.create(title: "Dia 4 - Cena 2", story: "Finalmente uma matéria menos complexa: SQL. Ao finalizar os exercícios obrigatórios, você...", user: User.first, buddy: buddy, npc_name: "Dudu")
dia4_parte18 = Scene.create(title: "Dia 4 - Cena 3", story: "Você não consegue se concentrar nas aulas online. Ao se sentir desmotivado, você...", user: User.first, buddy: buddy, npc_name: "Dudu")
dia4_parte19 = Scene.create(title: "Dia 4 - Cena 4", story: "Chegou a hora da aula de yoga!", user: User.first, buddy: buddy)

# dia 5
dia5_parte20 = Scene.create(title: "Dia 5 - Cena 1", story: "Bom dia! Seu colega comprou um bolo para dividir com a galera. Você já tomou café da manhã. Você…", user: User.first, buddy: buddy, npc_name: "Rodolfo")
dia5_parte21 = Scene.create(title: "Dia 5 - Cena 2", story: "O tão aguardado Front-End chegou e você percebe que…", user: User.first, buddy: buddy, npc_name: "Laurinha")
dia5_parte22 = Scene.create(title: "Dia 5 - Cena 3", story: "A marmita da semana acabou e você precisa sair pra almoçar. A galera decide ir em um restaurante, mas você precisa economizar.", user: User.first, buddy: buddy, npc_name: "Fernanda")
dia5_parte23 = Scene.create(title: "Dia 5 - Cena 4", story: "O dia chega ao fim e todos estão ouriçados para saber o que rola nesse Happy Hour. Você decide…", user: User.first, buddy: buddy)

# dia 6
dia6_parte24 = Scene.create(title: "Dia 6 - Cena 1", story: "Seu grupo está reunido para focar nos trabalhos pendentes para o projeto final.", user: User.first, buddy: buddy)
dia6_parte25 = Scene.create(title: "Dia 6 - Cena 2", story: "Houve 'amanhã' e a ressaca chegou com força!", user: User.first, buddy: buddy, npc_name: "Breno")
dia6_parte26 = Scene.create(title: "Dia 6 - Cena 3", story: "Seu amigo só quer saber de assistir aos jogos da Copa do Mundo, enquanto você e o resto trabalham incessantemente. Você…", user: User.first, buddy: buddy, npc_name: "Rodrigo")
dia6_parte27 = Scene.create(title: "Dia 6 - Cena 4", story: "O Brasil ganhou e todo mundo quer festejar no bar. O projeto ainda está pela metade.", user: User.first, buddy: buddy, npc_name: "Taís")

# dia 7
dia7_parte28 = Scene.create(title: "Dia 7 - Cena 1", story: "O Demo Day chegou e ainda faltam alguns detalhes de Front para ajustar.", user: User.first, buddy: buddy, npc_name: "Dudu")
dia7_parte29 = Scene.create(title: "Dia 7 - Cena 2", story: "Chegou a hora de apresentar o seu lindo projeto e ninguém quer participar.", user: User.first, buddy: buddy, npc_name: "Michel")
dia7_parte30 = Scene.create(title: "Dia 7 - Cena 3", story: "Ao final das apresentações todos se despedem e prometem manter contato.", user: User.first, buddy: buddy, npc_name: "Alecio3")
dia7_final = Scene.create(title: "Dia 7 - Cena 4", story: "Parabéns! Você chegou ao final do Bootcamp e se tornou um programador. Sua pontuação é: ", user: User.first, buddy: buddy, npc_name: "Davis")



############### ESCOLHAS #####################

# escolhas parte 1
Choice.create(scene: dia1_parte1, next_scene_id: 2, action: "Prossiga", charisma: 0, money: 0, front_end: 0, back_end: 0, stamina: 0)

# escolhas parte 2
Choice.create(scene: dia1_parte2, next_scene_id: 3, action: "puxa assunto com o colega ao lado", charisma: 2, money: 0, front_end: 0, back_end: 0, stamina: 0)
Choice.create(scene: dia1_parte2, next_scene_id: 3, action: "fica usando o celular até o início da aula", charisma: -2, money: 0, front_end: 0, back_end: 0, stamina: 0)

# escolhas parte 3
Choice.create(scene: dia1_parte3, next_scene_id: 5, action: "Chama o Teacher Assistant pra te ajudar", charisma: 1, money: 0, front_end: 0, back_end: 0, stamina: 0)
Choice.create(scene: dia1_parte3, next_scene_id: 4, action: "Tenta resolver sozinho", charisma: -2, money: 0, front_end: 0, back_end: 0, stamina: -2)

# escolhas parte 4
Choice.create(scene: dia1_parte4, next_scene_id: 5, action: "Pede ajuda ao buddy", charisma: 1, money: 0, front_end: 0, back_end: 0, stamina: 1)
Choice.create(scene: dia1_parte4, next_scene_id: 6, action: "Tenta fazer sozinho durante o almoço", charisma: -3, money: 0, front_end: 0, back_end: 0, stamina: 0)

# escolhas parte 5
Choice.create(scene: dia1_parte5, next_scene_id: 6, action: "Sair para interagir com os colegas", charisma: 3, money: -5, front_end: 0, back_end: 0, stamina: 1)
Choice.create(scene: dia1_parte5, next_scene_id: 6, action: "Comer sozinho no terraço", charisma: -3, money: 0, front_end: 0, back_end: 0, stamina: 0)
Choice.create(scene: dia1_parte5, next_scene_id: 6, action: "Almoço pra quê?", charisma: -3, money: 0, front_end: 0, back_end: 0, stamina: -3)

# escolhas parte 6
Choice.create(scene: dia1_parte6, next_scene_id: 7, action: "Ir para casa, amanhã vai ser tenso", charisma: -3, money: 0, front_end: 0, back_end: 0, stamina: 3)
Choice.create(scene: dia1_parte6, next_scene_id: 7, action: "Ficar um pouco mais e tentar conhecer tudo o que há no local", charisma: 2, money: 0, front_end: 0, back_end: 0, stamina: -2)

# escolhas parte 7
Choice.create(scene: dia2_parte7, next_scene_id: 8, action: "se depara com o professor e começa um papo", charisma: 2, money: 0, front_end: 0, back_end: 0, stamina: 0)
Choice.create(scene: dia2_parte7, next_scene_id: 8, action: "senta e espera a aula começar", charisma: -2, money: 0, front_end: 0, back_end: 0, stamina: 1)

# escolhas parte 8
Choice.create(scene: dia2_parte8, next_scene_id: 9, action: "faz uma pergunta", charisma: 1, money: 90, front_end: 0, back_end: 5, stamina: 0)
Choice.create(scene: dia2_parte8, next_scene_id: 9, action: "fica mexendo no Instagram", charisma: -2, money: 0, front_end: 0, back_end: -5, stamina: 0)
Choice.create(scene: dia2_parte8, next_scene_id: 9, action: "Estou confiante! Vou partir para os exercícios", charisma: -3, money: 0, front_end: 0, back_end: 2, stamina: -1)

# escolhas parte 9
Choice.create(scene: dia2_parte9, next_scene_id: 10, action: "Ir ao restaurante e dividir um PF com o colega", charisma: 5, money: -2, front_end: 0, back_end: 0, stamina: 0)
Choice.create(scene: dia2_parte9, next_scene_id: 10, action: "Ir ao restaurante esfomeado do jeito que é, pede um prato a la carte sozinho", charisma: -5, money: -5, front_end: 0, back_end: 0, stamina: -3)

# escolhas parte 10
Choice.create(scene: dia2_parte10, next_scene_id: 11, action: "Jogar no google e reza", charisma: 0, money: 0, front_end: 0, back_end: 0, stamina: 0)
Choice.create(scene: dia2_parte10, next_scene_id: 11, action: "Ver se o buddy entendeu e pede pra explicar", charisma: 2, money: 0, front_end: 0, back_end: 0, stamina: -3)

# escolhas parte 11
Choice.create(scene: dia2_parte11, next_scene_id: 12, action: "Vai na fé e espera que os outros te ajudem", charisma: 0 , money: 0, front_end: 0, back_end: 0, stamina: 0)
Choice.create(scene: dia2_parte11, next_scene_id: 12, action: "Está confiante e calmo para resolver o exercício sozinho", charisma: 2, money: 0, front_end: 0, back_end: 0, stamina: -3)

# escolhas parte 12
Choice.create(scene: dia3_parte12, next_scene_id: 13, action: "Dar um 'oi' e já sentar perto do seu buddy do dia", charisma: 3 , money: 0, front_end: 0, back_end: 0, stamina: 0)
Choice.create(scene: dia3_parte12, next_scene_id: 13, action: "Senta ao lado do seu colega e deixa pra mudar de lugar depois", charisma: -3, money: 0, front_end: 0, back_end: 0, stamina: 0)

# escolhas parte 13
Choice.create(scene: dia3_parte13, next_scene_id: 14, action: "Você quebra a cabeça e se esforça para resolver o desafio", charisma: 0, money: 0, front_end: 0, back_end: 5, stamina: 0)
Choice.create(scene: dia3_parte13, next_scene_id: 14, action: "Pega a cola no GitHub para depois tirar onda com a galera", charisma: 2, money: 0, front_end: 0, back_end: -5, stamina: 0)

# escolhas parte 14
Choice.create(scene: dia3_parte14, next_scene_id: 15, action: "Dar a vez pra quem precisa de poucos minutos para esquentar a comida", charisma:  5, money: 0, front_end: 0, back_end: 0, stamina: 0)
Choice.create(scene: dia3_parte14, next_scene_id: 15, action: "Mete o louco e deixa 10 minutos no microondas", charisma: -5, money: 0, front_end: 0, back_end: 0, stamina: 0)

# escolhas parte 15
Choice.create(scene: dia3_parte15, next_scene_id: 16, action: "Abrir a janela e sofrer com o calor", charisma: 5, money: 0, front_end: 0, back_end: 0, stamina: 0)
Choice.create(scene: dia3_parte15, next_scene_id: 16, action: "Prioriza manter a atenção num ambiente climatizado e liga o ar condicionado no 16º", charisma: -5, money: 0, front_end: 0, back_end: 0, stamina: 0)

# escolhas parte 16
Choice.create(scene: dia4_parte16, next_scene_id: 17, action: "Prioriza seu aprendizado. Afinal de contas, não testou, não pegou", charisma: -5, money: 0, front_end: 0, back_end: 0, stamina: 0)
Choice.create(scene: dia4_parte16, next_scene_id: 18, action: "Faz o teste. Descobre que deu positivo e avisa a galera no grupo", charisma: 5, money: 0, front_end: 0, back_end: 0, stamina: -5)

# escolhas parte 17
Choice.create(scene: dia4_parte17, next_scene_id: 19, action: "Parte para os exercícios opcionais e se desafia ainda mais", charisma: 0, money: 0, front_end: 0, back_end: 5, stamina: 0)
Choice.create(scene: dia4_parte17, next_scene_id: 19, action: "Se dá um descanso e sobe com a galera pra fumar um cigarro de origem duvidosa", charisma: 4, money: 0, front_end: 0, back_end: -2, stamina: -4)

# escolhas parte 18
Choice.create(scene: dia4_parte18, next_scene_id: 21, action: "Não participa da aula e pega a solução do Kitt no final do dia", charisma: 0, money: 0, front_end: -5, back_end: -5, stamina: 2)
Choice.create(scene: dia4_parte18, next_scene_id: 21, action: "Participa e pede os tickets online", charisma: 4, money: 0, front_end: 0, back_end: 3, stamina: 3)

# escolhas parte 19
Choice.create(scene: dia4_parte19, next_scene_id: 20, action: "Você sobe para 'relaxar' e fazer o seu único exercício semanal", charisma: 4, money: 0, front_end: 0, back_end: 0, stamina: 4)
Choice.create(scene: dia4_parte19, next_scene_id: 20, action: "Yoga é o caramba! Vou terminar os desafios. Namastê!", charisma: 0, money: 0, front_end: 3, back_end: 3, stamina: -2)

# escolhas parte 20
Choice.create(scene: dia5_parte20, next_scene_id: 21, action: "espera começar a aula e enquanto ninguém percebe, guarda um pedaço para mais tarde", charisma: -2, money: 0, front_end: 0, back_end: 0, stamina: 0)
Choice.create(scene: dia5_parte20, next_scene_id: 21, action: "come um pedaço generoso, arriscando ficar indisposto toda a manhã", charisma: -3, money: 0, front_end: 0, back_end: 0, stamina: -4)
Choice.create(scene: dia5_parte20, next_scene_id: 21, action: "fica de boa e espera o almoço", charisma: 3, money: 0, front_end: 0, back_end: 0, stamina: 2)

# escolhas parte 21
Choice.create(scene: dia5_parte21, next_scene_id: 22, action: "prefere Back-End e usa Bootstrap em tudo", charisma: 0, money: 0, front_end: -3, back_end: 0, stamina: 2)
Choice.create(scene: dia5_parte21, next_scene_id: 22, action: "achou massa e fica só no Front-Endless", charisma: -0, money: 0, front_end: 3, back_end: 0, stamina: 0)

# escolhas parte 22
Choice.create(scene: dia5_parte22, next_scene_id: 23, action: "passa no mercadinho e compra uma lasanha congelada", charisma: -1, money: -1, front_end: 0, back_end: 0, stamina: 1)
Choice.create(scene: dia5_parte22, next_scene_id: 23, action: "resolve ostentar e divide o PF no cartão de crédito", charisma: 2, money: -4, front_end: 0, back_end: 0, stamina: 2)

# escolhas parte 23
Choice.create(scene: dia5_parte23, next_scene_id: 24, action: "ir direto pra casa, já que não tem obrigação nenhuma de socializar", charisma: -3, money: 0, front_end: 0, back_end: 0, stamina: 5)
Choice.create(scene: dia5_parte23, next_scene_id: 24, action: "ficar uns minutinhos e ir pra casa porque precisa estudar no final de semana", charisma: 2, money: 0, front_end: 3, back_end: 0, stamina: 2)
Choice.create(scene: dia5_parte23, next_scene_id: 25, action: "entornar o 'caneco' como se não houvesse amanhã", charisma: 5, money: -3, front_end: 0, back_end: 0, stamina: -3)

# escolhas parte 24
Choice.create(scene: dia6_parte24, next_scene_id: 25, action: "Você vai encontrar com o pessoal e ajuda a desenvolver o app", charisma: 3, money: 0, front_end: 3, back_end: 3, stamina: -3)
Choice.create(scene: dia6_parte24, next_scene_id: 25, action: "Dá um migué, passa na padaria e chega só na hora do almoço", charisma: -2, money: -1, front_end: 1, back_end: 1, stamina: -1)

# escolhas parte 25
Choice.create(scene: dia6_parte25, next_scene_id: 26, action: "Você é um dev guerreiro e se encontra cedo com o grupo pra trabalhar no projeto final", charisma: 3, money: 0, front_end: 3, back_end: 3, stamina: -5)
Choice.create(scene: dia6_parte25, next_scene_id: 26, action: "Dá um migué, passa na padaria e chega só na hora do almoço", charisma: -2, money: -1, front_end: 1, back_end: 1, stamina: -3)

# escolhas parte 26
Choice.create(scene: dia6_parte26, next_scene_id: 27, action: "faz a sua parte, afinal, cada um sabe de si", charisma: 3, money: 0, front_end: 3, back_end: 3, stamina: -5)
Choice.create(scene: dia6_parte26, next_scene_id: 27, action: "para de trabalhar e assiste ao jogo também, já que não é trouxa!", charisma: 0, money: 0, front_end: 0, back_end: 0, stamina: 2)

# escolhas parte 27
Choice.create(scene: dia6_parte27, next_scene_id: 28, action: "Como um aluno aplicado, você segue codando", charisma: 3, money: 0, front_end: 3, back_end: 3, stamina: -3)
Choice.create(scene: dia6_parte27, next_scene_id: 28, action: "Copa é só de 4 em 4 anos. Depois você recupera o prejuízo", charisma: 0, money: 0, front_end: 0, back_end: 0, stamina: 2)

# escolhas parte 28
Choice.create(scene: dia7_parte28, next_scene_id: 29, action: "Pede um ticket ao TA e reza pra dar tempo de subir pro Heroku", charisma: 0, money: 0, front_end: 3, back_end: 0, stamina: -3)
Choice.create(scene: dia7_parte28, next_scene_id: 29, action: "Já está muito em cima da hora. Deixa como está seja o que Deus quiser", charisma: 0, money: 0, front_end: -4, back_end: 0, stamina: 0)

# escolhas parte 29
Choice.create(scene: dia7_parte29, next_scene_id: 30, action: "Você faz sozinho como um bom otário", charisma: 2, money: 0, front_end: 3, back_end: 3, stamina: 0)
Choice.create(scene: dia7_parte29, next_scene_id: 30, action: "Tira no sorteio quem vai ser o 'felizardo'", charisma: 0, money: 0, front_end: 0, back_end: 0, stamina: 0)

# escolhas parte 30
Choice.create(scene: dia7_parte30, next_scene_id: 31, action: "Você se emociona com o fim e já marca com um grupo para continuar codando", charisma: 2, money: 0, front_end: 4, back_end: 4, stamina: 0)
Choice.create(scene: dia7_parte30, next_scene_id: 31, action: "Você sabe que na real não vai ser assim, mas concorda e internamente declina", charisma: 2, money: 0, front_end: 0, back_end: 0, stamina: 0)

puts "💥BOOOOOOM💥"
