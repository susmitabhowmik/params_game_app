class Api::GamesController < ApplicationController
  def name_game
    @name = params[:name]
    render 'name_game.json.jbuilder'
  end
end
