class StaticPagesController < ApplicationController

  def about_us
  end

  def home
    @q = Word.ransack(params[:q])
  end

  def note
    word_ids = cookies[:note_words].split(" ").map(&:to_f)
    @words = Word.where(id: word_ids)
  end

  def note_click
    if cookies[:note_words] == nil
      cookies[:note_words] = params[:word_id]
    else
      word_ids = cookies[:note_words].split(" ")
      if word_ids.include? params[:word_id].to_s
        word_ids.delete(params[:word_id].to_s)
      else
        word_ids.push(params[:word_id])
      end
      cookies[:note_words] = word_ids.join(" ")
    end
  end

  def line_to_line
    article = Article.find params[:id]
    vn_article_arr = article.vn_article.split('.')
    kh_article_arr = article.kh_article.split('។')
    @ltl_article = vn_article_arr.zip(kh_article_arr).flatten.compact
  end

  def ph_to_ph
    @article = Article.find params[:id]
  end
end
