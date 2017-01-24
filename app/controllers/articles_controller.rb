class ArticlesController < ApplicationController
  def index
    @articles = Article.all
    @popular_words = Word.order(searchTime: :desc).take(30)
  end

  def show
    @article = Article.find params[:id]
    @popular_words = Word.order(searchTime: :desc).take(30)
  end
end
