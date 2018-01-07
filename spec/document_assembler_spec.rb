require 'document_assembler'

RSpec.describe DocumentAssembler do
  describe '#basic_document' do
    it 'returns the basic document with inlined javascript and css' do
      basic_document = DocumentAssembler.basic_document
      expect(basic_document).to include('<!-- Image Lingo HTML -->')
      expect(basic_document).to include('/* Image Lingo CSS */')
      expect(basic_document).to include('/* Image Lingo JS */')
    end
  end
end
