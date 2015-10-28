class RolesController < ApplicationController
  def index
    @roles = Role.all
  end

  def show
    @role = Role.find_by({ :id => params[:id]})
  end

  def new_form
  end

  def create_row
    r = Role.new
    r.character_name = params[:character_name]
    r.movie_id = params[:movie_id]
    r.actor_id = params[:actor_id]
    r.save

    redirect_to("http://localhost:3000/roles")
  end

  def edit_form
    @role = Role.find_by({ :id => params[:id]})
  end

  def update_row
    r = Role.find_by({ :id => params[:id]})
    r.character_name = params[:character_name]
    r.movie_id = params[:movie_id]
    r.actor_id = params[:actor_id]
    r.save

    redirect_to("http://localhost:3000/roles")
  end

  def destroy
    r = Role.find_by({ :id => params[:id]})
    r.destroy

    redirect_to("http://localhost:3000/roles")
  end
end
