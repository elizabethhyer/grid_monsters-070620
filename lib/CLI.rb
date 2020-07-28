require_relative "../environment.rb"

class CommandLineInterface


    def greeting 
        puts "Hello User, welcome to the grid."
        sleep 2
        puts "We've been waiting for you."
        sleep 3
        puts "Let the games begin"
    end 

    def call
        user_input = ""
        puts "Where would you like to go today?"
        puts "Please tell our scientists if you would like to go forwards or backwards in time."
        user_input = gets.chomp
        if user_input == "forwards"
            puts "You're in the future"
        elsif user_input == "forward"
            puts "You're in the future"
        elsif user_input == "backwards"
            puts "You're in the past"
        elsif user_input == "backward"
            puts "You're in the past"
        # else raise InputError
        end 
    end 

    def monsterfy_names_forward
        user_name = ""
        monster_names_forward = ["#{user_name}, Child of the Machines", "#{user_name}, Invader from the Nether Realms", "#{user_name}, Human Upgrade v.2.0", "#{user_name}...do you know that you are a Replicant?", "#{user_name}, Star Hunter"]
        user_name = gets.chomp
    end 





# class InputError < StandardError
#    puts "Please choose where, in time, you would like to go."
# end 

end 