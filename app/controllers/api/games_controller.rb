class Api::GamesController < ApplicationController
  def name_game
    @message = "name game!"
    render 'name_game.json.jbuilder'
  end
end
