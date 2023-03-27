class HeroController < ApplicationController
  def index
    hero = Hero.all
    render json: hero, status: :ok
  end

  def show
    hero = Hero.find_by(id: params[:id])
    if hero
      render json: hero, serializer: HeroAndPowerSerializer
    else
      render json: {error: "Hero not found"}, status: :not_found
    end
  end

end
