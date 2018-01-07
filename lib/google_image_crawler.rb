require 'open-uri'
require 'nokogiri'
require 'json'
require 'yaml'

class GoogleImageCrawler
  CRAWLER_SETTINGS = YAML.load_file('config/config.yaml')['crawler']

  def self.query(text)
    text.tr(' ', '+')
    doc = Nokogiri::HTML(
      open("#{CRAWLER_SETTINGS['search_url']}#{text.tr(' ', '+')}",
           'User-Agent' => CRAWLER_SETTINGS['user_agent'],
           'Referer' => CRAWLER_SETTINGS['referer'])
    )
    JSON.parse(doc.css(CRAWLER_SETTINGS['selector']).first.text)[CRAWLER_SETTINGS['attribute']]
  end
end
