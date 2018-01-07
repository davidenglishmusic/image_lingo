class ExerciseItem
  attr_accessor :word, :search_terms, :answer, :source

  def initialize(word, search_terms, answer, source = nil)
    @word = word
    @search_terms = search_terms
    @answer = answer
    @source = source
  end
end
