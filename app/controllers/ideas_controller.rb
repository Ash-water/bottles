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
    idea = Idea.new(idea_params)
    if idea.save
    # (createページに移行, ノーマルアクション)
    else
      render :new
    end
  end

  def show
    @idea = Idea.find(params[:id])
  end

  private

  def idea_params
    params.require(:idea).permit(:name, :description).merge(user_id: current_user.id)
  end

end
