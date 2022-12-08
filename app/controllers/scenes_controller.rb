class ScenesController < ApplicationController

  def new
    @scene = Scene.new
  end

  def show
    calculate_atributes unless params[:id] == '1'
    reset_attributes if params[:id] == '1'
    @scene = Scene.find(params[:id])
    respond_to do |format|
      if turbo_frame_request? && turbo_frame_request_id == 'cena'
        format.html { render partial: "cena" }
      else
        format.html
      end
    end
  end

  def create
    @scene = Scene.new(scene_params)
    @scene.user = User.first
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

  def calculate_atributes
    @choice = Choice.find(params[:choice])
    @pc = current_user.pc
    @pc.charisma += @choice.charisma
    @pc.front_end += @choice.front_end
    @pc.back_end += @choice.back_end
    @pc.stamina += @choice.stamina
    @pc.money += @choice.money
    @pc.save
  end

  def reset_attributes
    @pc = current_user.pc
    @pc.charisma = rand(0..5)
    @pc.money = rand(0..10)
    @pc.front_end = rand(0..5)
    @pc.back_end = rand(0..5)
    @pc.stamina = rand(0..5)
    @pc.save
  end
end
