require 'open-uri'
require 'nokogiri'
require 'json'
require 'yaml'

class GoogleImageCrawler
  CRAWLER_SETTINGS = YAML.load_file('config/config.yaml')['crawler']

  def self.query(text)
    params = [
      'q=' + text.tr(' ', '+'),
      CRAWLER_SETTINGS['image_search_param'],
      CRAWLER_SETTINGS['license_param']
    ].join('&')
    doc = Nokogiri::HTML(
      open("#{CRAWLER_SETTINGS['search_url']}#{params}",
           'User-Agent' => CRAWLER_SETTINGS['user_agent'],
           'Referer' => CRAWLER_SETTINGS['referer'])
    )
    JSON.parse(doc.css(CRAWLER_SETTINGS['selector']).first.text)[CRAWLER_SETTINGS['attribute']]
  end
end
