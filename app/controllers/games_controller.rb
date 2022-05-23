require 'open-uri'

class GamesController < ApplicationController
  def new
    @letters = ('a'..'z').to_a.sample(10)
  end

  def score
    @points = 0
    @send = params[:send]
    if @letters == (@send)
      @points += 10
    end
  end
end
