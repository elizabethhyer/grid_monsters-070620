class GameController

    def call
        self.grid_monster_greeting
        self.user_greeting    
        sleep 2
        self.new_location_greeting
        self.get_books 
        self.list_books
        self.loop_back_or_exit
    end 

    def grid_monster_greeting
        puts  " "
        puts  '       ______     _     __   __  ___                 __                      '                
        puts  '      / ____/____(_)___/ /  /  |/  /___  ____  _____/ /____  __________      '
        puts  '     / / __/ ___/ / __  /  / /|_/ / __ \/ __ \/ ___/ __/ _ \/ ___/ ___/      '
        puts  '    / /_/ / /  / / /_/ /  / /  / / /_/ / / / (__  ) /_/  __/ /  (__  )       ' 
        puts  '    \____/_/  /_/\__,_/  /_/  /_/\____/_/ /_/____/\__/\___/_/  /____/        '  
        puts  " "
        puts  " "
    end 
                                                                        
    def user_greeting 
        puts "Hello User, welcome to the grid."
        puts " "
        sleep 1
        puts "We've been waiting for you."
        puts " "
        sleep 1
        puts "Let the games begin"
        puts " "
    end 

    def change_location
        puts "Please tell our scientists whether you would like to go forwards or backwards in time."
        puts " "
        user_input = gets.chomp
        if user_input == "forwards" || user_input == "forward" 
            new_location = "The Future"
        elsif user_input == "Forwards" || user_input == "Forward" 
            new_location = "The Future"
        elsif user_input == "backwards" || user_input == "backward"
            new_location = "The Horrifying Past"
        elsif user_input == "Backwards" || user_input == "Backward"
            new_location = "The Horrifying Past"
        else 
            puts "You have chosen to exist outside of the confines of time. We ask you kindly to chose a different fate, or face the consequences at your own peril."
            sleep 3
            change_location
        end 
        new_location
    end

    def monsterfy_names_forward
        puts " "
        puts "Please tell us your name."
        puts " "
        user_input = gets.chomp
        monster_names_forward = ["#{user_input}, Child of the Machines", "#{user_input}, Invader from the Nether Realms", "#{user_input}, Human Upgrade v.2.0", "#{user_input}...do you know that you are a Replicant?", "#{user_input}, Star Hunter"]
        new_name = monster_names_forward.sample
    end 

    def monsterfy_names_backward
        puts " "
        puts "Please tell us your name."
        puts " "
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
        puts " "
        puts "Welcome to #{location}, #{name}..."
        puts " "
        sleep 1
        puts "You have entered a realm of Monsters and Demons and most importantly..."
        puts " "
        sleep 1
        puts "Writers."
        puts " "
        sleep 1
        puts "The monsters in your new world have written some books for you to review."
        puts " "
        sleep 1
        puts "Please enjoy a selection of their finest works."
        puts " "
    end 

    def get_books
        response = API.get_books
        response.each do |book|
            Book.new(book)
        end 
    end 

    def list_books
       Book.all.each_with_index {|book, num| puts "#{num +1}. #{book.title}"}
       self.display_description
    end 

    def display_description_text
        puts " "
        puts "Would you like to read a book by one of our lovely Monsters?"
        puts " "
        puts "Please type the name or number of the book you would like to read."
    end 

    def display_description
        self.display_description_text
        user_input = gets.chomp 
        if user_input.to_i == 0
            book = Book.find_by_name(user_input)
        elsif (1..Book.all.length).include?(user_input.to_i)
            book = Book.all[user_input.to_i - 1]
        else 
            puts "The option you have chosen does not seem to exist in this universe, please try again."
            sleep 3
            self.display_description
        end
        if book
            puts book.description
        else 
            puts "The option you have chosen does not seem to exist in this universe, please try again."
            sleep 3
            self.display_description
        end 
    end 

    def loop_back_or_exit_text
        puts " "
        puts "We hope you like that book. Please leave a five star review on GhoulBooks.com, or face the consequences."
        puts " "
        puts "Please type 'exit' to exit this universe and be sucked into a black hole, or 'turn back' to go back to the beginning of the game."
        puts " "
        puts "Alternatively you may type 'see books' to return to the list of books."
    end 

    def loop_back_or_exit
        self.loop_back_or_exit_text
        user_input = gets.chomp
        if user_input == "exit" || user_input == "Exit"
            warn "You will now become a part of the lost souls that make up the black hole."
            sleep 3
                exit 
        elsif user_input == "turn back" || user_input == "Turn back"
                Book.all.clear
                self.call 
        elsif user_input == "see books" || user_input == "See books"
                self.list_books
                sleep 5
                self.loop_back_or_exit
        else 
            puts "I do not understand. Please type 'exit' or 'turn back'." 
                sleep 5
                self.loop_back_or_exit
        end 
    end 

end 


#Questions
#Second time through the game it makes another API call, prints out two of every book.