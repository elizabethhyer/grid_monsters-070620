class Monsters

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
            # _____
            puts "You're in the future"
        elsif user_input == "forward"
            # _______
            puts "You're in the future"
        elsif user_input == "backwards"
            # _______
            puts "You're in the past"
        elsif user_input == "backward"
            puts "You're in the past"
        else raise InputError
        end 
    end 






class InputError < StandardError
   puts "Please choose where, in time, you would like to go."
end 

end 