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
   end

   def show
     @current_game = @game = current_user.games.where(active: true).first
     if !@game.nil?
       @guessed = @game.guess
       @word=@game.word.downcase.split("")
       guess = @game.letters.pluck(:letter)
       if !guess.nil?
          @index = find_index(guess,@game.word.downcase)
       end
     else
       @guessed = 10
       @corectWord  = session[:word]
       session[:word] = nil
     end
   end

   private

   def find_index(guess, words)
     all = []
     guess.each do |g|
       i = -1
       while i = words.index(g,i+1)
         all << i
       end
     end
     return all
   end

   def find_chars(word, characters)
      characters.chars.all? { |char| word.include?(char) }
   end

   def game_params
     params.require(:game).permit(:word, :iteration, :active, :letter)
   end

end
