class DocumentAssembler
  def self.assemble(exercises)
    add_exercises(basic_document, exercises)
  end

  def self.basic_document
    template_html = File.open('assets/html/template.html', 'r').read
    template_css = File.open('assets/css/template.css', 'r').read
    template_js = File.open('assets/js/template.js', 'r').read

    template_html.gsub!('<%= css %>', template_css)
    template_html.gsub!('<%= js %>', template_js)
    template_html
  end

  def self.add_exercises(document, exercises)
    exercise_markup = exercises.map { |exercise| ImageBlockGenerator.generate(exercise) }.join("\n")
    document.gsub!('<%= exercises %>', exercise_markup)
  end
end
