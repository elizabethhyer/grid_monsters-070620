require 'httparty'
require 'pry'

require_relative "../lib/api.rb"
require_relative "../lib/books.rb"
require_relative "../lib/cli.rb"

module Books
    class Error < StandardError; end 
end 