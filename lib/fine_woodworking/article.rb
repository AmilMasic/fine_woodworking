class FineWoodworking::Article
  attr_accessor :title, :category, :url, :teaser

  def self.today
    self.scrape_articles

    # Fake data commented out. working on real scraping now.
    
    # article_1 = self.new
    # article_1.title = "The Family Violin"
    # article_1.category = "From the Bench"
    # article_1.url = "https://www.finewoodworking.com/2019/02/25/w274-from-the-bench-the-family-violin"
    # article_1.teaser = "My personal story is about endings and beginnings, father, son, and daughters, completing one circle and starting another. My father, Henry Finck, was a professor of anatomy at the University…"
    # 
    # article_2 = self.new
    # article_2.title = "Mega Flush Trim Router Bits by Infinity"
    # article_2.category = "Tools & Material"
    # article_2.url = "https://www.finewoodworking.com/2019/02/21/tool-review-mega-flush-trim-router-bits-by-infinity"
    # article_2.teaser = "Infinity’s Mega Flush Trim router bits are well-made, double-bearing bits with compression shearing cutters made of carbide"
    # 
    # article_3 = self.new
    # article_3.title = "Creating Cutaway Views"
    # article_3.category = "Design. Click. Build"
    # article_3.url = "https://www.finewoodworking.com/2019/02/20/sketchup-creating-cutaway-views"
    # article_3.teaser = "In my previous blog post I showed how to use section cuts to create views showing the interior of your project. Another classic way to illustrate the inner details is…"
    # 
    # article_4 = self.new
    # article_4.title = "Tapered Sliding Dovetails by Hand"
    # article_4.category = "How-to"
    # article_4.url = "hhttps://www.finewoodworking.com/2019/02/18/w274-tapered-sliding-dovetails"
    # article_4.teaser = "Specialty plane helps cut this self-locking joint"
    # 
    # [article_1, article_2, article_3, article_4]
  end

  def self.scrape_articles

    articles = []
    

    articles
end
