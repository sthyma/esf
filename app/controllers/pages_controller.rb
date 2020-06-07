class PagesController < ApplicationController
  def home
    @estimation = Estimation.new
  end
end
