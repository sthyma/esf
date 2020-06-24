class EstimationsController < ApplicationController
  def create
    @estimation = Estimation.new(estimation_params)

    if @estimation.save
      flash.notice = "Estimation envoyée!"
      redirect_to root_path
    else
      flash.alert = "Oh, oh, il y a eu un petit pépin... Veuillez réessayer plus tard!"
      redirect_to root_path
    end
  end

  private
  def estimation_params
    params.require(:estimation).permit(:first_name, :last_name, :address, :type_estimation)
  end
end
