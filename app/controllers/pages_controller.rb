class PagesController < ApplicationController
  def home
    @estimation = Estimation.new
    @french_navbar = true
  end

  def eng
    @estimation = Estimation.new
  end
end
