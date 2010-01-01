
desc "This task will purchase your Vodka"
task :purchaseAlcohol do
  puts "Purchased Vodka"
end

desc "This task will drink one too many"
task :mixDrink => :purchaseAlcohol do
  puts "Mixed Fuzzy Navel"
end

desc "This task will drink one too many"
task :getSmashed => :mixDrink do
  puts "Dood, everthing's blurry, can I halff noth'r drinnnk?"
end


