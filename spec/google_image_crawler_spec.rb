require 'google_image_crawler'

RSpec.describe GoogleImageCrawler do
  xit 'retrieves the first image url' do
    expect(GoogleImageCrawler.query('apple fruit'))
      .to match(%r{^https://\S*(jpeg|jpg|gif|png)})
  end
end
