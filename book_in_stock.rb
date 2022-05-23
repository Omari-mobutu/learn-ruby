#create a bookinstock class with an isbn and price instance variable
 class Bookinstock
  attr_reader :isbn, :price
  
  def initialize(isbn, price)
    @isbn = isbn
    @price = Float(price)
  end
   
 end
