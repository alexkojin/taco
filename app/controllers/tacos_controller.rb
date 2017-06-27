class TacosController < ApplicationController
  def index
    @tacos = Taco.all
    json_response(@tacos)
  end

  def create
    @taco = Taco.create!(taco_params)
    json_response(@taco, :created)
  end

  def destroy
    Taco.find(params[:id]).destroy
    head :no_content
  end

  private

  def taco_params
    params.require(:taco).permit(:meat, :notes, :rice, :salsa)
  end
end
