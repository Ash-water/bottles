class IdeasController < ApplicationController

  def index
  end

  def new
    @idea = Idea.new
  end

  def create
    Idea.create(idea_params)
    redirect_to root_path
  end

  private

  def idea_params
    params.require(:idea).permit(:name, :description)
  end
end
