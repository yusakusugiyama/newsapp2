class Scraping


#yahooニュースのギャンブル依存症カテゴリをスクレイピング
  def self.addictionnews
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
      topic.save
    end

   

  end


end


