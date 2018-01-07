require 'exercise_item_generator'

RSpec.describe ExerciseItemGenerator do
  describe '#assemble' do
    it 'returns 8 exercise items from a json file with 8 items' do
      exercises = ExerciseItemGenerator.items_from_json_file('spec/fixtures/czech.json')
      expect(exercises.size).to eql 8
    end
  end
end
