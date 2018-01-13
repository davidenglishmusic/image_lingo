require_relative 'lib/document_assembler.rb'
require_relative 'lib/exercise_item_generator.rb'
require_relative 'lib/google_image_crawler.rb'

json_path = ARGV.first
html_output_path = ARGV.last

exercises = ExerciseItemGenerator.items_from_json_file(json_path)

exercises.map do |exercise|
  exercise.source = GoogleImageCrawler.query(exercise.search_terms)
  exercise
end

html = DocumentAssembler.assemble(exercises)

File.open(html_output_path, 'w') { |file| file.puts html }

puts "Generated #{html_output_path} from #{json_path}\n#{Time.now}"
