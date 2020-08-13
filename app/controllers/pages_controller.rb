class PagesController < ApplicationController
  def home
    @estimation = Estimation.new
  end

  def eng
    @estimation = Estimation.new
  end
end
