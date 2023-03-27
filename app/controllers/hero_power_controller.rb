class HeroPowerController < ApplicationController
  def create
    hero_power = HeroPower.create(attributes)
    render json: hero_power.hero, serializer: HeroAndPowerSerializer
  end

  private
  def attributes
    params.permit(:strength, :power_id, :hero_id)
  end
end
