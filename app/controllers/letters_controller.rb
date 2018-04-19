class LettersController < ApplicationController
  before_action :authenticate_user!

  def create
    game = Game.find(params[:game_id])
    @letter = game.letters.build(letter_params)
    games_left(game, @letter.letter)
    guessed = 10 - game.guess

    if @letter.save
      status = check_status(game)

      if status
        flash[:success] = "We have a winner.  Nice work!"
        game.active=false
        game.save
        current_user.wins += 1
        current_user.save(validate: false)
        redirect_to root_path
      else
        if (game.guess == 10)
          session[:word] = game.word
          game.active=false
          current_user.losses += 1
          current_user.save(validate: false)
          game.save
          flash[:error] = "The game is over"
          redirect_to game_path(game)
        else
          #@guessedLetters = return_letters(game)
          flash[:success] = "You Guessed '#{letter_params[:letter]}'."
          flash[:notice] = "You have #{guessed} guesses left"
          redirect_to game_path(game)
        end
      end
    else
      flash[:error] = "Something went wrong."
      redirect_back(fallback_location: request.referrer)
    end

  end

  private

  def games_left(game, letter)
    @word = game.word.split("")
    if !@word.include?(letter)
      r = game.guess += 1
      game.save
    end

  end

  def check_status(game)
    @word = game.word.split("")
    @lg = return_letters(game)
    return (@word - @lg).empty?

  end

  def return_letters(game)
    letters = game.letters.pluck(:letter)
  end

  def letter_params
      params.require(:letter).permit(:letter)
  end

  def count_letters(game)
    @test = game.letters.count+1
  end
end
