class Api::GamesController < ApplicationController
  def name_game
    @name = params[:name].upcase
    @message = ""
    if @name[0,1]== 'A'
      @message += "Hey, your name starts with the first letter of the alphabet!"
    else
      @message += "Your name begins with the letter #{@name[0,1]}. "
    end
    render 'name_game.json.jbuilder'
  end
end
