# Introduction  

Grid Monsters is a simple CLI game that takes user input, tells them they've gone either to the future or past, and prints out a list of books (using the Google Books API) for the user to see more information about.

The app prompts a user for their choice to go into the future or the past, their name, and their choice from a printed list of horror books. The app then outputs the book's description for the user to read before asking if they would like to go back to the list of books, the beginning of the game, or exit.

This CLI app is my first project for the FT software engineering cohort at Flatiron School.

def very_nervous(name) 
    puts "#{name} is very nervous."
end 
very_nervous(Elizabeth)

## Getting Started

Grid Monsters requires a private key which can be obtained by visiting https://console.developers.google.com/apis/api/books.googleapis.com and requesting a key with a new or existing Google account. Once a key has been generated, you can put your private key in the API class, in the local variable 'key'.

## Installation

To run this application in your local environment, please follow these steps:

Clone this repository
cd into the directory
Run bundle install
Run bin/run_game

## Sample

```       ______     _     __   __  ___                 __                      
      / ____/____(_)___/ /  /  |/  /___  ____  _____/ /____  __________      
     / / __/ ___/ / __  /  / /|_/ / __ \/ __ \/ ___/ __/ _ \/ ___/ ___/      
    / /_/ / /  / / /_/ /  / /  / / /_/ / / / (__  ) /_/  __/ /  (__  )       
    \____/_/  /_/\__,_/  /_/  /_/\____/_/ /_/____/\__/\___/_/  /____/        

Hello User, welcome to the grid.

We've been waiting for you.

Let the games begin

Please tell our scientists whether you would like to go forwards or backwards in time.
Forwards

Please tell us your name.

Elizabeth

Welcome to The Future, Elizabeth, Invader from the Nether Realms...

You have entered a realm of Monsters and Demons and most importantly...

Writers.

The monsters in your new world have written some books for you to review.

Please enjoy a selection of their finest works.
1. The Vampire's Photograph
2. Night Embrace
3. The Medusa Effect
4. 3000 Mph in Every Direction at Once: Stories and Essays
5. Ghost Stories (Nancy Drew )
6. The Secret Path
7. The Deadly Doll
8. Featherless Chickens, Laughing Women, and Serious Stories
9. Les Horreurs du monde
10. The Knife

Would you like to read a book by one of our lovely Monsters?

Please type the name or number of the book you would like to read.

4

What if everyone actually was famous for exactly fifteen minutes? What if Joey Ramone could save the world? What if the spiritual enlightenment of saints and sages was a sexually transmitted disease? These are the fictions. Neon signs that predict a city's future. Companies paying people to insult their clients online. Edgar Allan Poe's New York is still alive, but not well. These are the facts. And they say speculative fiction and personal essays don't belong in the same book. Whether in the glossy pages of the men's magazine Razor or the stolen reams of office supplies that make up the zine The Whirligig, the writing of Nick Mamatas is your hitchhiker's guide to the new, and very weird, millennium. Don't know where the world is headed? Nick does and it's 3000 miles per hour in every direction at once.

We hope you like that book. Please leave a five star review on GhoulBooks.com, or face the consequences.

Please type 'exit' to exit this universe and be sucked into a black hole, or 'turn back' to go back to the beginning of the game.

Alternatively you may type 'see books' to return to the list of books.
exit

You will now become a part of the lost souls that make up the black hole.```

## Contributing

Bug reports and pull requests are welcome on Github at https://github.com/elizabethhyer/grid_monsters-070620. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the Contributor Covenant code of conduct.

## Authors 

Elizabeth Hyer - All work 

## Acknowledgments

I would like to acknowledge Google Books for continuing to offer their API free of charge.

