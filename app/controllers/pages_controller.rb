class PagesController < ApplicationController
  def home
    @estimation = Estimation.new
  end

  def eng
  end
end
