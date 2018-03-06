class HomeController < ApplicationController
  before_action :authenticate_user!
  def index
  	@fincas = Finca.all
  end
end
