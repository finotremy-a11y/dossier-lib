def sign_up
  puts "Bienvenue ! Créons ton compte."
  puts "Définis ton mot de passe :"
  password = gets.chomp

  while password.length < 8 || !password.match?(/[A-Z]/) || !password.match?(/[0-9]/)
    puts "Le mot de passe doit contenir au moins 8 caractères, une majuscule et un chiffre."
    puts "Rentre un nouveau mot de passe :"
    password = gets.chomp
  end

  password
end

def confirmation_password(password)
  puts "Confirme ton mot de passe :"
  password_confirmation = gets.chomp

  while password_confirmation != password
    puts "Mot de passe incorrect, réessaie :"
    password_confirmation = gets.chomp
  end

  puts "Mot de passe confirmé"
end

def log_in(password)
  puts "Rentre ton mot de passe pour te connecter :"
  user_password = gets.chomp

  while user_password != password
    puts "Mot de passe incorrect, réessaie :"
    user_password = gets.chomp
  end

  puts "Bienvenue !"
end

def welcome_screen(password)
  puts "Bienvenue dans ton espace sécurisé !"
  puts "Voici ton mot de passe : #{password}"
  puts "Ne le perds pas !"
end

def perform
  password = sign_up
  confirmation_password(password)
  log_in(password)
  welcome_screen(password)
end

perform

