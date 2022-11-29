class ChoicesController < ApplicationController
  def new
    @choice = Choice.new
  end

  def create
    @choice = Choice.new(choice_params)
    @choice.save
    redirect_to choice_path(@choice)
  end

  def index
    @choices = Choice.all
  end

  def show
    @choice = Choice.find(params[:id])
  end

  def destroy
    @choice = Choice.find(params[:id])
    @choice.destroy
    redirect_to choices_path, status: :see_other
  end

  def edit
    @choice = Choice.find(params[:id])
  end

  def update
    @choice = Choice.find(params[:id])
    @choice.update(choice_params)
    redirect_to choice_path(@choice)
  end

  private

  def choice_params
    params.require(:choice).permit(:name, :address, :rating)
  end
end
