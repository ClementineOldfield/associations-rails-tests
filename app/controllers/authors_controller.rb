class AuthorsController < ApplicationController

  def home
    redirect_to authors_path
  end

  def index
    @authors = Author.all
  end

  def new
    
  end

  def create
    p params
    new_author = Author.new
    new_author.name = params[:name]
    new_author.date_of_birth = params[:dob]
    new_author.save
    redirect_to authors_path
  end

  def show
    @author = Author.find params[:id]
  end

  def destroy

  end

  def edit
    @author = Author.find params[:id]
  end

  def update
   
  end
end
