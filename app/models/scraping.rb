class Scraping

#yahooニュースのギャンブル依存症カテゴリをスクレイピング
  def self.addiction_topic_1
    agent = Mechanize.new
    links = []

    page = agent.get("http://news.yahoo.co.jp/theme/04f6c6afdb151e6c6657/")
    elements = page.search('div.mc a')
    elements.each do |ele|
      links << ele.get_attribute('href')
    end

    links.each do |link|
      page = agent.get(link)
      title = page.at('div.hd h1').inner_text if page.at('div.hd h1')
      text = page.at('p.ynDetailText').inner_text if page.at('p.ynDetailText')
      image_url = page.at('.thumb a img').get_attribute('src') if page.at('.thumb a img')

      topic = Topic.where(title: title,text: text,image_url: image_url).first_or_initialize
      topic.genre = "addiction"
      topic.url = link
      topic.save
    end
  end

#プログラミング情報(グノシーウェブカテゴリ)
    def self.programming_topic_1
    agent = Mechanize.new
    links = []

    page = agent.get("https://gunosy.com/tags/434")
    elements = page.search('div.list_content div.list_title a')
    elements.each do |ele|
      links << ele.get_attribute('href')
    end

    links.each do |link|
      page = agent.get(link)
      title = page.at('h1.article_header_title').inner_text if page.at('h1.article_header_title')
      text = page.at('p.ynDetailText').inner_text if page.at('p.ynDetailText')
      image_url = page.at('.thumb a img').get_attribute('src') if page.at('.thumb a img')

      topic = Topic.where(title: title,text: text,image_url: image_url).first_or_initialize
      topic.genre = "addiction"
      topic.url = link
      topic.save
    end
  end

end




