class ScenesController < ApplicationController

  def index
    @scenes = Scene.all
  end

  def new
    @scene = Scene.new
  end

  def show
    @scene = Scene.find(params[:id])
  end

  def create
    @scene = Scene.new(scene_params)
    @scene.user = current_user
    @scene.buddy = Buddy.first
    if @scene.save
      redirect_to @scene, notice: "scene was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def scene_params
    params.require(:scene).permit(:title, :story, :user_id, :buddy_id)
  end
end
