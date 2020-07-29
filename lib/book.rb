class Book

    attr_accessor :title, :description

    @@all = []

    def initialize(book)
        book.each {|key, value| self.send(("#{key}="), value)}
        @@all << self
    end 

    def self.create_from_collection(books)
        books.each {|book| self.new(book)}
    end 

    def self.find_by_name(title) 
        self.all.detect do |book|
            book.title == title
        end 
    end 

    def self.all
        @@all
    end 

    # def self.destroy_all
    #     self.all.clear
    # end 

     # def add_book_attributes(books_hash)
    #   books_hash.each {|key, value| self.send(("#{key}="), value)}
    # end
    
end 