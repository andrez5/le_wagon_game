class ChoicesController < ApplicationController
  def index
    @choices = Choice.all
  end

  def show
    @choice = Choice.find(params[:id])
    @scene = Scene.find(params[:scene_id])
    @pc = current_user.pcs.first
    @pc.charisma += @choice.charisma
    @pc.front_end += @choice.front_end
    @pc.back_end += @choice.back_end
    @pc.stamina += @choice.stamina
    @pc.luck += @choice.luck
    @pc.money += @choice.money
    @pc.save
  end

  def new
    @scene = Scene.find(params[:scene_id])
    @choice = Choice.new
  end

  def create
    @scene = Scene.find(params[:scene_id])
    @choice = Choice.new(choice_params)
    @choice.scene = @scene
    # @choice.user = current_user
    if @choice.save
      # @scene.available -= @choice.quantity
      @scene.save
      redirect_to scene_choice_path(@scene, @choice), notice: "ok"
    else
      render 'scenes/show', status: :unprocessable_entity
    end
  end

  def edit
    @choice = Choice.find(params[:id])
  end

  def update
    if @choice.update(choice_params)
      redirect_to @choice, notice: "choice was successfully update."
    else
      render :edit, status: :unproccessable_entity
    end
  end

  def destroy
    @choice = Choice.find(params[:id])
    @choice.destroy
    redirect_to choices_path, status: :see_other
  end

  private

  def choice_params
    params.require(:choice).permit(:next_scene_id, :scene_id)
  end
end
