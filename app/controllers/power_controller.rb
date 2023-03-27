class PowerController < ApplicationController
  def index
    power = Power.all
    render json: power
  end

  def show
    power = Power.find_by(id: params[:id])
    if power
      render json: power
    else
      power_error
    end
  end

  def update
    power = Power.find_by(id: params[:id])
    if power
      power.update(power_params)
      render json: power
    else
      power_error
    end
  end

  private
  def power_params
    params.permit(:name, :description)
  end

  def power_error
    render json: {error: "Power not found"}, status: :not_found
  end
end
