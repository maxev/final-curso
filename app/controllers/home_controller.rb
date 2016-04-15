class HomeController < ApplicationController
  def index
  	 @latest_products = Product.ultimos_cuatro
  end
end
