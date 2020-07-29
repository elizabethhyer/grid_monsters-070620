class API

    @@key = "AIzaSyBrv_BBsu0AVAxjRBa2PWQFKN5CBKTQu5g"

   def self.get_books
    response = HTTParty.get("https://www.googleapis.com/books/v1/volumes?q=subject:Horror&key=#{@@key}")
    response["items"].collect do |book|
        books_hash = {} 
            books_hash[:title] = book["volumeInfo"]["title"]
            books_hash[:description] = book["volumeInfo"]["description"] 
            books_hash
    end 
   end 

end 
