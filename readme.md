       ______     _     __   __  ___                 __    
      / ____/____(_)___/ /  /  |/  /___  ____  _____/ /____  __________     
     / / __/ ___/ / __  /  / /|_/ / __ \/ __ \/ ___/ __/ _ \/ ___/ ___/      
    / /_/ / /  / / /_/ /  / /  / / /_/ / / / (__  ) /_/  __/ /  (__  )       
    \____/_/  /_/\__,_/  /_/  /_/\____/_/ /_/____/\__/\___/_/  /____/        

Grid Monsters is a simple CLI game that takes user input, tells them they've gone either to the future or past, and prints out a list of books (using the Google Books API) for the user to see more information about.

The app prompts a user for their choice to go into the future or the past, their name, and their choice from a printed list of horror books. The app then outputs the book's description for the user to read before asking if they would like to go back to the list of books, the beginning of the game, or exit.

This CLI app is my first project for the FT software engineering cohort at Flatiron School.
def very_nervous(name) 
    puts "#{name} is very nervous."
end 
very_nervous(Elizabeth)

Getting Started

Grid Monsters requires a private key which can be obtained https://console.developers.google.com/apis/api/books.googleapis.com with either a new account, or an existing Google account. Once a key has been generated, you can put your private key in the API class, in the local variable 'key'.

Installation
To run this application in your local environment, please follow these steps:

Clone this repository
Run 
Run bundle install
Run 

