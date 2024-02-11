class WelcomeController < ApplicationController
  def index
    render Welcome::IndexView
  end
end
