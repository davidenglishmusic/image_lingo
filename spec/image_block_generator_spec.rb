require 'image_block_generator'
require 'exercise_item'

RSpec.describe ImageBlockGenerator do
  describe '#generate' do
    it 'returns the markup for an exercise item' do
      exercise_item = ExerciseItem.new('apple', 'fruit apple', 'jablko', 'https://www.fruit.com/apple.jpg')
      expect(ImageBlockGenerator.generate(exercise_item))
        .to eql('<div class="exercise-item"><div class="photo" style="background-image:url(\'https://www.fruit.com/apple.jpg\')"></div><input type="text" data-answer="jablko"></div>')
    end
  end
end
