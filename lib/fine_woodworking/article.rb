require "open-uri"
require "nokogiri"
require "pry"


class FineWoodworking::Article
  attr_accessor :title, :category, :article_url, :teaser, :author, :content

  def self.today
    self.scrape_articles
  end
  def self.article_content
    self.scrape_article_content
  end
  def self.scrape_articles
    # binding.pry
    @articles = []
    # binding.pry
    doc = Nokogiri::HTML(open("https://www.finewoodworking.com/"))
    doc.css(".hp__featured__story").each do |article|
        title = article.css(".title").text
        category = article.css(".channel").text
        article_url = article.css("a").attribute("href").value
        teaser = article.css(".teaser").text
        article_hash = {
          :title => title,
          :category => category,
          :article_url => article_url,
          :teaser => teaser
        }

      @articles << article_hash
      end
      @articles

      # title = doc.css(".hp__featured__story").first.css(".title").text
      # teaser = doc.css(".hp__featured__story").first.css(".teaser").text
      # category = doc.css(".hp__featured__story").first.css(".channel").text
      # url = doc.css(".hp__featured__story").first.css("a").attribute("href").value


  end

  def self.scrape_article_content(article)
    # binding.pry

    doc = Nokogiri::HTML(open(article[:article_url]))
    author = doc.css(".article__author").text
    content = doc.css(".article__body p").text
    puts "#{author}"
    puts "#{content}"

  end
end
