require 'random_word_generator'
class GamesController < ApplicationController
   before_action :authenticate_user!


   def new
     @game = current_user.games.build
   end

   def create
     @word = RandomWordGenerator.word
     @game = current_user.games.build(word: @word, active: true)

      if @game.save
        current_user.currentgame = @game.id
        current_user.save
        redirect_to game_path(@game), notice: "Welcome to the game"
      else
        flash[:error] = "Something went wrong, please try again."
        redirect_to root_path
      end
   end

   def update
     @game = Game.find(params[:id])
     @game.iteration +=1

     new_params = game_params
     num_left = 10-@game.iteration


     if @game.update(new_params)
       if num_left == 0
         flash[:error] = "Game Over"
         @game.active = false
         @game.save
         current_user.currentgame = nil
         current_user.losses +=1
         current_user.save
         redirect_to root_path
       else
         flash[:success] = "You Guessed '#{new_params[:letter]}'."
         flash[:notice] = "You have #{num_left} guesses left"
         redirect_to game_path(@game)
       end
     else
       flash[:error] = "Something went wrong."
       redirect_back(fallback_location: request.referrer)
     end


    end

   def show

     @current_game = @game = current_user.games.where(active: true).first
     @arrLetters = @game.word.downcase.split("")
     if @current_game.letter
       @idx_l = check_letter_match(@current_game.letter)
     end


   end

   private

   def game_params
     params.require(:game).permit(:word, :iteration, :active, :letter)
   end

   def check_letter_match(letter)
     arrLetters = @game.word.downcase.split("")
      p arrLetters.each_index.select{|i| arrLetters[i] == letter}
   end




end
