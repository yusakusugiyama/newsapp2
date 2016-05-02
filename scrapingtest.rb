require 'mechanize'

agent = Mechanize.new
page = agent.get("https://www.google.co.jp/webhp?hl=ja#hl=ja&q=%E3%83%8B%E3%83%A5%E3%83%BC%E3%82%B9")
topic_titles = page.search('div.rc h3.r')
topic_urls = page.search('div.rc h3.r a')


topic_titles.each do |topic_title|
  puts topic_title.inner_text
end

topic_urls.each do |topic_url|
  puts topic_url.get_attribute('href')

end
