class WordsController < ApplicationController
  def show
    @word = Word.find params[:id]
  end

  def index

  end
end
