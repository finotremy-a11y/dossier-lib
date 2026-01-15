def simulate_game
  steps = 0
  rolls = 0
  while steps < 10
    roll = rand(1..6)
    rolls += 1
    while roll == 5 || roll == 6
      steps += 1
      if steps >= 10
        break
      end
      roll = rand(1..6)
      rolls += 1
    end

    if roll == 1
      steps -= 1
      steps = 0 if steps < 0
    end
    # For 2-4, do nothing
  end
  rolls
end

# Interactive game
puts "Bienvenue dans le jeu de l'escalier magique !"
puts "Tu dois monter un escalier de 10 marches pour atteindre le trésor."
puts "Lance le dé pour avancer."
steps = 0
while steps < 10
  puts "Appuie sur Entrée pour lancer le dé."
  gets
  roll = rand(1..6)
  puts "Tu as lancé un #{roll} !"
  while roll == 5 || roll == 6
    
    steps += 1
    puts "Tu avances d'une marche grâce à ton lancer de #{roll} !"
    puts "Tu es maintenant à la marche #{steps}."
    if steps >= 10
      break
    end
    puts "Tu as droit à un lancer supplémentaire ! Appuie sur Entrée pour lancer le dé."
    gets
    roll = rand(1..6)
    puts "Tu as lancé un #{roll} !"
  end

  if roll == 2 || roll == 3 || roll == 4
    puts "Dommage, tu n'avance pas, tu es toujours à la marche #{steps}."
  elsif roll == 1
    steps -= 1
    if steps < 0
      steps = 0
    end
    puts "Perdu, tu descends d'une marche. Tu es maintenant à la marche #{steps}."
  end
end
puts "Félicitations ! Tu as atteint le trésor magique !"

# Simulation
puts "\nSimulons 100 partie afin de trouver la moyenne de lancer pour arriver a 10 :"
total_rolls = 0
100.times do
  total_rolls += simulate_game
end
average = total_rolls / 100.0
puts "Pour arriver a 10, il faudra en moyenne #{average} lancer"

