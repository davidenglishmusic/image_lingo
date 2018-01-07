class ImageBlockGenerator
  def self.generate(exersize_item)
    "<div class=\"exercise-item\"><div class=\"photo\" style=\"background-image:url('#{exersize_item.source}')\"></div><input type=\"text\" data-answer=\"#{exersize_item.answer}\"></div>"
  end
end
