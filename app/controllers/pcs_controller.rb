class PcsController < ApplicationController

  def new
    @pc = Pc.new
  end

  def create
    @pc = Pc.new(pc_params)
    @pc.user = current_user
    @pc.scene = Scene.first
    if @pc.save
      redirect_to root_path, notice: "pc was successfully created!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def pc_params
    params.require(:pc).permit(:pc_name, :gender, :age)
  end
end
