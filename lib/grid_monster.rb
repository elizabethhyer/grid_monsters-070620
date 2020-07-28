class Monsters

    attr_accessor :title, :description

    @@all = []

    def initialize(books)
        books.each {|key, value| self.send(("#{key}="), value)}
        @@all << self
    end 

end 