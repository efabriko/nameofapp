class SimplePagesController < ApplicationController
  
	def landing_page
    @featured_product = Product.all
    @products = Product.last(3)
  end

  def index
  end
  
end
