# This module dynamically creates HTML form ruby methods
module HTML
  def gallery_image(src)
    el(:div, class: 'photo') { el(:img, src: src) }
  end

  def el(tag_name, options = {})
    attributes = options.map { |key, val| "#{key}='#{val}'" }.join
    html = []
    html << "<#{tag_name} #{attributes}>"
    html << yield if block_given?
    html << "</#{tag_name}>"
    html.join('')
  end
end
