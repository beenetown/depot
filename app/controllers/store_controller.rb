class StoreController < ApplicationController
  def index
    session[:counter] ||=0
    @session_counter = session[:counter] += 1
    @products = Product.order(:title)
  end
end
