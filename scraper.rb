require 'wikidata/fetcher'
require 'pry'

names = {}

names[6] = EveryPolitician::Wikidata.wikipedia_xpath( 
  url: 'https://en.wikipedia.org/wiki/List_of_Members_of_the_6th_National_Assembly_of_Namibia',
  before: '//h2/span[@id="References"]',
  xpath: '//li//a[not(@class="new")]/@title',
) 

names[5] = EveryPolitician::Wikidata.wikipedia_xpath( 
  url: 'https://en.wikipedia.org/wiki/List_of_Members_of_the_5th_National_Assembly_of_Namibia',
  before: '//h2/span[@id="References"]',
  xpath: '//li//a[not(@class="new")]/@title',
) 

names[4] = EveryPolitician::Wikidata.wikipedia_xpath( 
  url: 'https://en.wikipedia.org/wiki/List_of_Members_of_the_4th_National_Assembly_of_Namibia',
  before: '//h2/span[@id="References"]',
  xpath: '//li//a[not(@class="new")]/@title',
) 

names[2] = EveryPolitician::Wikidata.wikipedia_xpath( 
  url: 'https://en.wikipedia.org/wiki/Members_of_the_2nd_National_Assembly_of_Namibia',
  before: '//h2/span[@id="References"]',
  xpath: '//li//a[not(@class="new")]/@title',
) 

names[1] = EveryPolitician::Wikidata.wikipedia_xpath( 
  url: 'https://en.wikipedia.org/wiki/Members_of_the_1st_National_Assembly_of_Namibia',
  before: '//h2/span[@id="References"]',
  xpath: '//li//a[not(@class="new")]/@title',
) 

EveryPolitician::Wikidata.scrape_wikidata(names: { en: names.values.flatten.uniq })
warn EveryPolitician::Wikidata.notify_rebuilder
