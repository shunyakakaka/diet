class WeightsController < ApplicationController

  def index 
    @weights = Weight.all.order(:id)
  end

  def new
    @weight = Weight.new(flash[:weight])
  end

  def create
    weight = Weight.new(weight_params)
    if weight.save
      flash[:notice] = "記録しました"
      redirect_to weights_path
    else
      redirect_to new_weight_path, flash: {weight: weight, error_messages: weight.errors.full_messages
      }
    end
  end

  def show
    @weight = Weight.find(params[:id])
  end

  def edit
    @weight = Weight.find(params[:id])
  end

  def update
    weight = Weight.find(params[:id])
    if weight.update(weight_params)
      flash[:notice] = "編集しました"
      redirect_to weight_path
    else
      redirect_to edit_weight_path, flash: {weight: weight, error_messages: weight.errors.full_messages}
    end
  end

  private

  def weight_params
    params.require(:weight).permit(:ini_weight, :day_weight, :created_at, :updated_at)
  end
end