class WelcomeController < ApplicationController
  def index
    @users = User.all
    MovieService.conn
    require "pry"; binding.pry
  end
end
