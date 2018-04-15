class PagesController < ApplicationController

  def home
    if current_user
      @games = current_user.games
      @current_game = check_current_game(current_user.currentgame)

    end

  end

  private

  def check_current_game(id)
    @games.where(active: true, id: id)
  end

end
