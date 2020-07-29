class GameController

    def call
        self.grid_monster_greeting
        self.user_greeting    
        sleep 2
        self.new_location_greeting
        self.get_books
        self.list_books
    end 

    def grid_monster_greeting
        puts  " "
        puts  "       ______     _     __   __  ___                 __                      "                
        puts  "      / ____/____(_)___/ /  /  |/  /___  ____  _____/ /____  __________      "
        puts  "     / / __/ ___/ / __  /  / /|_/ / __ \/ __ \/ ___/ __/ _ \/ ___/ ___/      "
        puts  "    / /_/ / /  / / /_/ /  / /  / / /_/ / / / (__  ) /_/  __/ /  (__  )       " 
        puts  "    \____/_/  /_/\__,_/  /_/  /_/\____/_/ /_/____/\__/\___/_/  /____/        "  
        puts  " "
    end 
                                                                        
    def user_greeting 
        puts "Hello User, welcome to the grid."
        sleep 1
        puts "We've been waiting for you."
        sleep 1
        puts "Let the games begin"
    end 

    def change_location
        puts "Please tell our scientists whether you would like to go forwards or backwards in time."
        user_input = gets.chomp
        if user_input == "forwards" || user_input == "forward" 
            new_location = "The Future"
        elsif user_input == "backwards" || user_input == "backward"
            new_location = "The Horrifying Past"
        else 
            puts "You have chosen to exist outside of the confines of time. We ask you kindly to chose a different fate, or face the consequences at your own peril."
            sleep 3
            change_location
        end 
        new_location
    end

    def monsterfy_names_forward
        puts "Please tell us your name."
        user_input = gets.chomp
        monster_names_forward = ["#{user_input}, Child of the Machines", "#{user_input}, Invader from the Nether Realms", "#{user_input}, Human Upgrade v.2.0", "#{user_input}...do you know that you are a Replicant?", "#{user_input}, Star Hunter"]
        new_name = monster_names_forward.sample
    end 

    def monsterfy_names_backward
        puts "Please tell us your name."
        user_input = gets.chomp
        monster_names_backward = ["Count #{user_input}, Bloodthirsty Lord of the Night", "#{user_input}, Child of the Grave", "#{user_input}, Disciple of the Wolf and Moon", "#{user_input}, Wyvern of the Blue Dragonflight", "#{user_input}, Caller of Cthulu", "#{user_input}, Leader of the Deathly Coven", "#{user_input}, Butcher of the Bay"]
        new_name = monster_names_backward.sample
    end 

    def new_location_greeting
        new_location = self.change_location
        if new_location == "The Future"
            location = "The Future" 
            name = monsterfy_names_forward
        else new_location == "The Horrifying Past"
            location = "The Horrifying Past"
            name = monsterfy_names_backward
        end 
        puts "Welcome to #{location}, #{name}..."
        sleep 1
        puts "You have entered a realm of Monsters and Demons and most importantly..."
        sleep 1
        puts "writers."
        sleep 1
        puts "The monsters in your new world have written some books for you to review."
        sleep 1
        puts "Please enjoy a selection of their finest works."
    end 

    def get_books
        response = API.get_books
        response.each do |book|
            Book.new(book)
        end 
    end 

    def list_books
       Book.all.each_with_index {|book, num| puts "#{num +1}. #{book.title}"}
       self.prompt_user
    end 

    # def display_info
        # puts "#{Book.description}"
    # end 

    def prompt_user
        puts "Would you like to read a book by one of our lovely Monsters?"
        puts "Please enter 'yes' to read the book, or 'no' to exit this universe and be sucked into a black hole"
        user_input = gets.chomp
        if user_input == "yes" || user_input == "Yes"
            display_info
        elsif user_input == "no" || user_input == "No"
            warn "You will know become a part of the lost souls that make up the black hole."
            exit 3
        else
            puts "The option you have chosen does not seem to exist in this universe, please try again."
            sleep 3
            prompt_user
        end 
    end

end 
