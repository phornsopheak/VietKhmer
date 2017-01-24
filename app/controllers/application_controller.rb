class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :change_locale

  def change_locale
     if ['en', 'kh', 'vn'].include?(params[:locale])
      cookies[:locale] = params[:locale]
      params.delete :locale
      redirect_to words_url
    end

    I18n.locale = cookies[:locale] || I18n.default_locale
  end
end
