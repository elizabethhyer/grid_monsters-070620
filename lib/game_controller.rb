class GameController

    def call
        self.grid_monster_greeting
        self.user_greeting    
        sleep 1
        self.change_location
        self.new_location_greeting
        self.get_books 
        self.list_books
        self.loop_back_or_exit
    end 

    def grid_monster_greeting
        puts  '       ______     _     __   __  ___                 __                      '                
        puts  '      / ____/____(_)___/ /  /  |/  /___  ____  _____/ /____  __________      '
        puts  '     / / __/ ___/ / __  /  / /|_/ / __ \/ __ \/ ___/ __/ _ \/ ___/ ___/      '
        puts  '    / /_/ / /  / / /_/ /  / /  / / /_/ / / / (__  ) /_/  __/ /  (__  )       ' 
        puts  '    \____/_/  /_/\__,_/  /_/  /_/\____/_/ /_/____/\__/\___/_/  /____/        '  
    end 
                                                                        
    def user_greeting 
        puts "\nHello User, welcome to the grid."
        sleep 1
        puts "\nWe've been waiting for you."
        sleep 1
        puts "\nLet the games begin"
    end 

    def change_location
        puts "\nPlease tell our scientists whether you would like to go forwards or backwards in time."
        puts "\nPlease select '1' for The Future, or '2' for The Past."
        user_input = gets.chomp
        if user_input.to_i == 1
            @@new_location = "The Future"
        elsif user_input.to_i == 2
            @@new_location = "The Horrifying Past"
        else 
            puts "\nYou have chosen to exist outside of the confines of time. We ask you kindly to chose a different fate, or face the consequences at your own peril."
            sleep 1
            change_location
        end 
        @@new_location 
    end

    def monsterfy_names_forward
        puts "\nPlease tell us your name."
        user_input = gets.chomp
        monster_names_forward = ["#{user_input} The Cylon", "Dalek #{user_input}", "#{user_input} The Astropath", "Baron #{user_input}", "Darth #{user_input}", "#{user_input}, The Predator", "#{user_input}, Child of the Machines", "#{user_input}, Invader from the Nether Realms", "#{user_input}, Human Upgrade v.2.0", "#{user_input}...do you know that you are a Replicant?", "#{user_input}, Star Hunter"]
        new_name = monster_names_forward.sample
    end 

    def monsterfy_names_backward
        puts "\nPlease tell us your name."
        user_input = gets.chomp
        monster_names_backward = ["Count #{user_input}, Bloodthirsty Lord of the Night", "#{user_input}, Child of the Grave", "#{user_input}, Disciple of the Wolf and Moon", "#{user_input}, Wyvern of the Blue Dragonflight", "#{user_input}, Caller of Cthulu", "#{user_input}, Leader of the Deathly Coven", "#{user_input}, Butcher of the Bay", "The Dreaded Vampire #{user_input}", "#{user_input}, The Alchemist"]
        new_name = monster_names_backward.sample
    end 

    def new_location_greeting
        if @@new_location == "The Future"
            location = "The Future" 
            name = self.monsterfy_names_forward
        elsif @@new_location == "The Horrifying Past"
            location = "The Horrifying Past"
            name = self.monsterfy_names_backward
        end 
        puts "\nWelcome to #{location}, #{name}..."
        sleep 1
        puts "\nYou have entered a realm of Monsters and Demons and most importantly..."
        sleep 1
        puts "\nWriters."
        sleep 1
        puts "\nThe monsters in your new world have written some books for you to review."
        sleep 1
        puts "\nPlease enjoy a selection of their finest works."
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
        puts "\nWould you like to read a book by one of our lovely Monsters?"
        puts "\nPlease type the name or number of the book you would like to read."
    end 

    def display_description
        self.display_description_text
        user_input = gets.chomp
        if user_input.to_i == 0  
            book = Book.find_by_name(user_input.split.map(&:capitalize).join(' ')) 
            if book == nil 
                puts "\nPlease type the name exactly, or use the appropriate number."
                self.display_description
            else 
                puts book.description
            end
        elsif (1..Book.all.length).include?(user_input.to_i)
            book = Book.all[user_input.to_i - 1]
            puts book.description
        else 
            puts "\nThe option you have chosen does not seem to exist in this universe, please try again."
            sleep 1
            self.display_description
        end
    end

    def loop_back_or_exit_text
        puts "\nWe hope you like that book. Please leave a five star review on GhoulBooks.com, or face the consequences."
        puts "\nPlease type 'exit' to exit this universe and be sucked into a black hole, or 'turn back' to go back to the beginning of the game."
        puts "\nAlternatively you may type 'see books' to return to the list of books."
    end 

    def loop_back_or_exit
        self.loop_back_or_exit_text
        user_input = gets.chomp
        if user_input == "exit" || user_input == "Exit"
            warn "\nYou will now become a part of the lost souls that make up the black hole."
            sleep 1
                exit 
        elsif user_input == "turn back" || user_input == "Turn back"
                Book.all.clear
                self.call 
        elsif user_input == "see books" || user_input == "See books"
                self.list_books
                sleep 1
                self.loop_back_or_exit
        else 
            puts "\nI do not understand. Please type 'exit', 'turn back' or 'see books'." 
                sleep 1
                self.loop_back_or_exit
        end 
    end 

end 
