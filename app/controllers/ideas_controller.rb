class IdeasController < ApplicationController
  before_action :authenticate_user!, only: [:index, :new, :show, :edit, :delete,] 

  def top
  end

  def introduction
  end

  def index2
  end

  def index
    @ideas = Idea.includes(:user).order(id: "DESC").page(params[:page]).per(6)
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

  def edit
    @idea = Idea.find(params[:id])
  end

  def update
    idea = Idea.find(params[:id])
    idea.update(idea_params)
    redirect_to idea_path(idea.id)
  end

  def destroy
    idea = Idea.find(params[:id])
    idea.destroy
    redirect_to ideas_path
  end

  def share
    idea = idea.find(params[:id])
    if idea.share 
      idea.update(share: false)
    else
      idea.share(share: true)
    end

    item = Post.find(params[:id])
    render json: { post: item }
  end

  private

  def idea_params
    params.require(:idea).permit(:name, :description).merge(user_id: current_user.id)
  end

end
