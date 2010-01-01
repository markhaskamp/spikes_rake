
task :purchaseAlcohol do
  puts "Purchased Vodka"
end

task :mixDrink => :purchaseAlcohol do
  puts "Mixed Fuzzy Navel"
end

task :getSmashed => :mixDrink do
  puts "Dood, everthing's blurry, can I halff noth'r drinnnk?"
end


