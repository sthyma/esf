class EstimationsController < ApplicationController
  def new
    @estimation = Estimation.new
  end

  def create
    @estimation = Estimation.new(estimation_params)

    if @estimation.save
      redirect_to root
    else
      render :new
    end
  end

  private
  def estimation_params
    params.require(:estimation).permit(:first_name, :last_name, :address, :type)
  end
end
