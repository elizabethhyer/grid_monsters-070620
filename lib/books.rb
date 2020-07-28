class Books

    attr_accessor :title, :description

    @@all = []

    def initialize(books)
        books.each {|key, value| self.send(("#{key}="), value)}
        @@all << self
    end 

    def self.create_from_collection(books)
        books.each {|book| self.new(book)}
    end 

    def add_book_attributes(books_hash)
        books_hash.each {|key, value| self.send(("#{key}="), value)}
    end

end 