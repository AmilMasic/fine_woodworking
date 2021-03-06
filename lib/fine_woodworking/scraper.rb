class FineWoodworking::Scraper


  def self.scrape_articles
    #scraping the articles starts here
    #using each because the articles have the same class hp__featured__story
    # @@articles = []

    doc = Nokogiri::HTML(open("https://www.finewoodworking.com/"))
    doc.css(".hp__featured__story").each do |article|
      #storing scraped data into variables
        title = article.css(".title").text
        category = article.css(".channel").text
        article_url = article.css("a").attribute("href").value
        teaser = article.css(".teaser").text

        # #storing the variables into hash
        # article_hash = {
        #   :title => title,
        #   :category => category,
        #   :article_url => article_url,
        #   :teaser => teaser
        # }

      FineWoodworking::Article.new(title, category, article_url, teaser)
      end
      # @@articles
    end

    def self.scrape_article_content(article)
      doc = Nokogiri::HTML(open(article.article_url))
      article.author = doc.css(".article__author").text
      article.content = doc.css(".article__body p").text

      # puts "#{article.title}"
      # puts "#{author}"
      # puts "#{content}"

    end
end
