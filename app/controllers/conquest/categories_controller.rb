class Conquest::CategoriesController < ApplicationController
  def show
  	  	@categories = Category.includes(:segments).all

  end

  def index
  	  	@categories = Category.includes(:segments).all

  end
end
