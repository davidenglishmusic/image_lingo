class ImageBlockGenerator
  def self.generate(exersize_item)
    "<div><img src=#{exersize_item.source}><input type=\"text\" data-answer=\"#{exersize_item.answer}\"></div>"
  end
end
