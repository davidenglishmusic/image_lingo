class ExerciseItem
  attr_accessor :word, :search_term, :answer, :source

  def initialize(word, search_term, answer, source)
    @word = word
    @search_term = search_term
    @answer = answer
    @source = source
  end
end
