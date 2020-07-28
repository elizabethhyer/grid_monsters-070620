class Books

    attr_accessor :title, :description

    @@all = []

    def initialize(books)
        books.each {|key, value| self.send(("#{key}="), value)}
        @@all << self
    end 

    def self.create_from_collection(books_array)
        books_array.each {|book| self.new(book)}
    end 

end 