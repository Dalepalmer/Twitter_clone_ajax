class HomeController < ApplicationController
  def index
    @haikus = Haiku.all
  end
end
