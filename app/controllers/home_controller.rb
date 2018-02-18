class HomeController < ApplicationController
  def index
  	@fincas = Finca.all
  end
end
