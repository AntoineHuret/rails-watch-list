class MoviesController < ApplicationController

  def index
    @movies = Movie.all
  end

  def edit
  end

  def new
    @movies = Movie.new
  end

  def create
  end

  def show
  end
end
