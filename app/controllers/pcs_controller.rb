class PcsController < ApplicationController

  def index
    @pcs = Pc.all
  end

  def show
    @pc = Pc.find(params[:id])
  end

  def edit
    @pc = Pc.find(params[:id])
  end

  def update
    if @pc.update(pc_params)
      redirect_to @pc, notice: "pc was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def new
    @pc = Pc.new
  end

  def create
    @pc = Pc.new(pc_params)
    @pc.user = current_user
    @pc.scene = Scene.first
    @pc.charisma = rand(5..15)
    @pc.money = rand(5000..15000)
    @pc.front_end = rand(5..15)
    @pc.back_end = rand(5..15)
    @pc.stamina = rand(50..100)
    @pc.luck = rand(5..15)
    if @pc.save
      redirect_to root_path, notice: "pc was successfully created!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @pc = Pc.find(params[:id])
    @pc.destroy
    redirect_to pcs_path, status: :see_other
  end

  def pc_params
    params.require(:pc).permit(:pc_name, :gender, :age)
  end
end
