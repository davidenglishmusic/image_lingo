require 'document_assembler'
require 'exercise_item_generator'

RSpec.describe DocumentAssembler do
  describe '#basic_document' do
    xit 'returns the basic document with inlined javascript and css' do
      basic_document = DocumentAssembler.basic_document
      expect(basic_document).to include('<!-- Image Lingo HTML -->')
      expect(basic_document).to include('/* Image Lingo CSS */')
      expect(basic_document).to include('/* Image Lingo JS */')
    end
  end

  describe '#assemble' do
    it 'returns a document with exercises' do
      exercises = ExerciseItemGenerator.items_from_json_file('spec/fixtures/czech.json')
      exercises.each { |exercise| exercise.source = 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/15/Red_Apple.jpg/265px-Red_Apple.jpg' }
      expect(DocumentAssembler.assemble(exercises))
        .to include '<div class="exercise-item"><div class="photo" style="background-image:url(\'https://upload.wikimedia.org/wikipedia/commons/thumb/1/15/Red_Apple.jpg/265px-Red_Apple.jpg\')"></div><input type="text" data-answer="jablko"></div>'
    end
  end
end
