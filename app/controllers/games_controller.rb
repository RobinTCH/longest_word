class GamesController < ApplicationController
  def new
    #@letters = ('a'..'z').to_a.sample(10)
    @letters = ['l', 'l', 'l']
  end

  def score
    @word = params[:word].split('')
    letters = params[:letters].split(' ')
    while running == true
      letters.difference(@word)
      end
      @word.each do |letter|
        letters.delete(letter)
      end
    end
    "sorry but #{@word} can't be built out of #{letters.join(',')}"
    raise
  end
end
