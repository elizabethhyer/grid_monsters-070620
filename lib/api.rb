require_relative "../config/environment.rb"

# key = "AIzaSyBrv_BBsu0AVAxjRBa2PWQFKN5CBKTQu5g"
# response = HTTParty.get("https://www.googleapis.com/books/v1/volumes?q=subject:#{subject}&key=#{key}")

class API

    @@key = "AIzaSyBrv_BBsu0AVAxjRBa2PWQFKN5CBKTQu5g"

   def self.get_books(subject)
     books = []
    response = HTTParty.get("https://www.googleapis.com/books/v1/volumes?q=subject:#{subject}&key=#{@@key}")
    response["items"].each do |book|
        books_hash = {}
             books_hash[:title] = book["volumeInfo"]["title"]
             books_hash[:description] = book["volumeInfo"]["description"] 
     books << books_hash
    end 
     books
   end 


end 

#Add if statement that will take care of subjects being passed in that Google books does not recognize 
#Add functionality to only return list of ten books