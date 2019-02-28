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

  def guess_a_number
    @guess = params[:guess].to_i
    number = 42
    @output = "Please enter a number."
    if @guess < number
      @output = "Your guess is too low."
    elsif @guess > number
      @output = "Your guess is too high."
    else
      @output = "You guessed it!"
    end
    render 'guess_a_number.json.jbuilder'
  end

  def number_guessing_game
    @guess = params[:guessed_number].to_i
    number = 75
    @output = "Please enter a number."
    if @guess < number
      @output = "Your guess is too low."
    elsif @guess > number
      @output = "Your guess is too high."
    else
      @output = "You guessed it!"
    end
    render 'number_guessing_game.json.jbuilder'
  end
end
