#create a csvreader class with an instance variable that holds booksinstock and a method that reads the csv file to get the isbn
 require 'csv'
 require_relative 'book_in_stock'

 class Csvreader 
  def initialize
    @books_in_stock = []
  end
  def csv_file_reader(file_name)
    CSV.foreach(file_name, headers: true) do |row|
      @books_in_stock << Bookinstock.new(row["ISBN"], row["Price"])
    end
  end
  def total_value_in_stock
    sum = 0.0
    @books_in_stock.each {|book| sum += book.price}
    sum
  end
  def number_of_each_isbn
    isbn_count = Hash.new(0)
    @books_in_stock.each {|book| isbn_count[book.isbn] += 1}
    isbn_count
  end
 end
 