class ActorsController < ApplicationController
  def index
    @actors = Actor.all
  end

  def show
    @actor = Actor.find_by({ :id => params[:id]})
  end

  def new_form
  end

  def create_row
    a = Actor.new
    a.dob = params[:dob]
    a.name = params[:name]
    a.bio = params[:bio]
    a.image_url = params[:image_url]
    a.save

    redirect_to("http://localhost:3000/actors")
  end

  def edit_form
    @actor = Actor.find_by({ :id => params[:id]})
  end

  def update_row
    a = Actor.find_by({ :id => params[:id]})
    a.dob = params[:dob]
    a.name = params[:name]
    a.bio = params[:bio]
    a.image_url = params[:image_url]

    a.save

    redirect_to("http://localhost:3000/actors")
  end

  def destroy
    a = Actor.find_by({ :id => params[:id]})
    a.destroy

    redirect_to("http://localhost:3000/actors")
  end
end
