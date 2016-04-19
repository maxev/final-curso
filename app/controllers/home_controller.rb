class HomeController < ApplicationController
  def index
  	 @latest_products = Product.latest_four
  end
end
