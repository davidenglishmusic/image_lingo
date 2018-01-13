require 'json'
require_relative 'exercise_item'

class ExerciseItemGenerator
  def self.items_from_json_file(file_path)
    JSON.parse(File.read(file_path)).map do |exercise|
      ExerciseItem.new(exercise['word'], exercise['search terms'], exercise['answer'], exercise['source'])
    end
  end
end
