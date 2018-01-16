class ExerciseItem
  attr_accessor :word, :search_terms, :answer, :keyboard_answer, :source

  def initialize(word, search_terms, answer, keyboard_answer = nil, source = nil)
    @word = word
    @search_terms = search_terms
    @answer = answer
    @keyboard_answer = keyboard_answer ? keyboard_answer : answer
    @source = source
  end
end
