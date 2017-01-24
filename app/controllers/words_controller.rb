class WordsController < ApplicationController
  before_action :search_object, :get_top_word

  def show
    @word = Word.find params[:id]
    @word.update_attribute(:searchTime, @word.searchTime + 1)
  end

  def index
    @words = @q.result
  end

  private
  def search_object
    @q = Word.ransack(params[:q])
  end

  def get_top_word
    @popular_words = Word.order(searchTime: :desc).take(30)
  end
end
