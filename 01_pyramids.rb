def ask_size
  loop do
    print "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ? (choisis un nombre impair)\n> "
    n = gets.to_i
    return n if n.positive? && n.odd?
    puts "Veuillez entrer un nombre entier positif et impair."
  end
end

def print_diamond(n)
  mid = (n + 1) / 2
  (1..mid).each do |i|
    puts ' ' * (mid - i) + '#' * (2 * i - 1)
  end
  (mid - 1).downto(1) do |i|
    puts ' ' * (mid - i) + '#' * (2 * i - 1)
  end
end

n = ask_size
puts "Voici la pyramide :"
print_diamond(n)

