require 'image_block_generator'
require 'exercise_item'

RSpec.describe ImageBlockGenerator do
  describe '#generate' do
    it 'returns the markup for an exercise item without keyboard answer data' do
      exercise_item = ExerciseItem.new('apple', 'fruit apple', 'jablko', nil, 'https://www.fruit.com/apple.jpg')
      expect(ImageBlockGenerator.generate(exercise_item))
        .to eql('<div class="exercise-item"><div class="photo" style="background-image:url(\'https://www.fruit.com/apple.jpg\')"></div><input type="text" data-answer="jablko" data-keyboard-answer="jablko"></div>')
    end

    it 'returns the markup for an exercise item with keyboard answer data' do
      exercise_item = ExerciseItem.new('fork', 'fork', 'vidlička', 'vidlicka', 'https://www.cutlery.com/fork.jpg')
      expect(ImageBlockGenerator.generate(exercise_item))
        .to eql('<div class="exercise-item"><div class="photo" style="background-image:url(\'https://www.cutlery.com/fork.jpg\')"></div><input type="text" data-answer="vidlička" data-keyboard-answer="vidlicka"></div>')
    end
  end
end
