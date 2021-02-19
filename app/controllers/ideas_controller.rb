class IdeasController < ApplicationController

  def top
  end

  def introduction
  end

  def index2
  end

  def index
    @ideas = Idea.all
  end

  def new
    @idea = Idea.new
  end

  def create
    Idea.create(idea_params)
    redirect_to root_path
  end

  def show
    @idea = Idea.find(params[:id])
  end

  private

  def idea_params
    params.require(:idea).permit(:name, :description)
  end

end
