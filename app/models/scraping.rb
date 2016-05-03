class Scraping


#yahooニュースのギャンブル依存症カテゴリをスクレイピング
  def self.addictionnews
    agent = Mechanize.new
    page = agent.get("http://news.yahoo.co.jp/theme/04f6c6afdb151e6c6657/")
    titles = page.search('div.mc a')
    image_links = page.search('div.themeDetail p.thumbtop img')



    image_links.each do |image_url|
      puts image_url.get_attribute('src')
    end

    titles.each do |title|
      puts title.inner_text
    end

  end


end


