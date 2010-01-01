task :default => "alcoholic:getSmashed"

namespace :alcoholic do

  desc "This task will purchase your Vodka"
  task :purchaseAlcohol do
    puts "Purchased Vodka"
  end

  desc "This task will mix the drinks"
  task :mixDrink => :purchaseAlcohol do
    puts "Mixed Fuzzy Navel"
  end

  desc "This task will drink one too many"
  task :getSmashed => :mixDrink do
    puts "Dood, everthing's blurry, can I halff noth'r drinnnk?"
  end

end


namespace :dirs do

  desc "Create blank directories if they don't already exist"
  task(:create_directories) do

    # the folders I need to create
    shared_folders = ["icons", "images", "groups"]

    for folder in shared_folders

      # check to see if it exists
      if File.exists?(folder)
        puts "#{folder} exists"
      else
        puts "#{folder} doesn't exist so we're creating"
        Dir.mkdir "#{folder}"
      end
    end
  end

end




