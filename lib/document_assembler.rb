class DocumentAssembler
  def self.assemble
    basic_document
  end

  def self.basic_document
    template_html = File.open('assets/html/template.html', 'r').read
    template_css = File.open('assets/css/template.css', 'r').read
    template_js = File.open('assets/js/template.js', 'r').read
    jquery_js = File.open('assets/js/jquery-3.2.1.min.js', 'r').read

    template_html.gsub!('<%= css %>', template_css)
    template_html.gsub!('<%= js %>', template_js)
    template_html.gsub!('<%= jquery %>', jquery_js)
    template_html
  end
end
