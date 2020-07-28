require_relative "../config/environment.rb"

class CommandLineInterface

    def greeting 
        puts "Hello User, welcome to the grid."
        sleep 2
        puts "We've been waiting for you."
        sleep 3
        puts "Let the games begin"
    end 

    def change_location
        puts "Please tell our scientists whether you would like to go forwards or backwards in time."
        user_input = gets.chomp
        if user_input == "forwards" || user_input == "forward"
            new_location = "The Future"
        elsif user_input == "backwards" || user_input == "backward"
            new_location = "The Horrifying Past"
        # else raise InputError
        end 
    end 


    def monsterfy_names_forward
        puts "Please tell us your name."
        user_name = gets.chomp
        monster_names_forward = ["#{user_name}, Child of the Machines", "#{user_name}, Invader from the Nether Realms", "#{user_name}, Human Upgrade v.2.0", "#{user_name}...do you know that you are a Replicant?", "#{user_name}, Star Hunter"]
        new_name = monster_names_forward.sample
    end 


    def monsterfy_names_backward
        puts "Please tell us your name."
        user_name = gets.chomp
        monster_names_backward = ["Count #{user_name}, Bloodthirsty Lord of the Night", "#{user_name}, Child of the Grave", "#{user_name}, Disciple of the Wolf and Moon", "#{user_name}, Wyvern of the Blue Dragonflight", "#{user_name}, Caller of Cthulu", "#{user_name}, Leader of the Deathly Coven", "#{user_name}, Butcher of the Bay"]
        new_name = monster_names_backward.sample
    end 

    def new_location_welcome
        if change_location == "The Future"
            location = "The Future" 
            name = monster_names_forward
        else change_location == "The Horrifying Past"
            location = "The Horrifying Past"
            name = monster_names_backward
        puts "Welcome to #{location}, #{name}..."
        sleep 2
        puts "You have entered a realm of Monsters and Demons and most importantly..."
        sleep 3
        puts "writers."
    end 

    def call
        greeting    
        sleep 5
        user_input = ""
        until user_input == "exit"
        puts "To quit, type 'exit'."
            
        # else raise InputError
        end 
    end 



# class InputError < StandardError
#    puts "Please choose where, in time, you would like to go."
# end 

end 

