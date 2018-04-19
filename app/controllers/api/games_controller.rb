class Api::GamesController < ApplicationController

  def show
    @game = current_user.games.where(active: true).first
    end
end
