class IngredientsController < ApplicationController
  def index
    @photos = Photo.all
    render :index
  end
end
