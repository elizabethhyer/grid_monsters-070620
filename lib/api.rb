require 'pry'

class API

    attr_accessor :title, :genre, :info

    def initialize(title, genre, info)
        @title = title
        @genre = genre
        @info = info
    end

    def self.get_books
        response = HTTParty.get("https://www.googleapis.com/books/v1/volumes?q=search+terms", {
            headers: {"Authorization" => "Bearer #{ENV['AIzaSyBrv_BBsu0AVAxjRBa2PWQFKN5CBKTQu5g']}"},
        })
        monster_books = response["books"]
    end 

end 