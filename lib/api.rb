require 'pry'
require 'httparty'
# key = "AIzaSyBrv_BBsu0AVAxjRBa2PWQFKN5CBKTQu5g"
# response = HTTParty.get("https://www.googleapis.com/books/v1/volumes?q=subject:#{subject}&key=#{key}")

class API

    @@key = "AIzaSyBrv_BBsu0AVAxjRBa2PWQFKN5CBKTQu5g"

   def self.get_books(subject, key)
    books = []
    response = HTTParty.get("https://www.googleapis.com/books/v1/volumes?q=subject:#{subject}&key=#{key}")
    response.each do |book|
        books_hash = { :title => book["items"][0]["volumeInfo"]["title"], 
                       :description => book["items"][0]["volumeInfo"]["description"] }
    books << books_hash
    end 
    books
   end 


end 

