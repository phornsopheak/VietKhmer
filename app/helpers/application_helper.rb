module ApplicationHelper
  def full_title page_title = ""
    base_title = t("titles.title")
    if page_title.empty?
      base_title
    else
      "#{page_title} | #{base_title}"
    end
  end

  def set_lang
    case cookies[:locale]
    when 'vn'
      t "selects.langs.vn"
    when 'kh'
      t "selects.langs.kh"
    else
      t "selects.langs.en"
    end
  end

  def set_note_word_color
    if cookies[:note_words] == nil
      "material-icons grey-text"
    else
      word_ids = cookies[:note_words].split(" ")
      if word_ids.include? @word.id.to_s
        "material-icons yellow-text"
      else
        "material-icons grey-text"
      end
    end
  end

  def is_noted? word
    if cookies[:note_words] == nil
      return false
    else
      word_ids = cookies[:note_words].split(" ")
      word_ids.include? word.id.to_s
    end
  end

  def is_vn_lang?
    cookies[:locale] == "vn" ? true : false
  end
end
