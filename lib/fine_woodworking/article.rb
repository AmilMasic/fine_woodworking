class FineWoodworking::Article
  attr_accessor :title, :category, :url

  def self.today
    puts <<-DOC.gsub /^\s+/, ""
    1 . Article 1
    2. Article 2
    3. Article 3
    4. Article 4
    DOC

    article_1 = self.new
    article_1.title = "The Family Violin"
    article_1.category = "From the Bench"
    article_1.url = "https://www.finewoodworking.com/2019/02/25/w274-from-the-bench-the-family-violin"

    article_2 = self.new
    article_2.title = "Mega Flush Trim Router Bits by Infinity"
    article_2.category = "Tools & Material"
    article_2.url = "https://www.finewoodworking.com/2019/02/21/tool-review-mega-flush-trim-router-bits-by-infinity"

    article_3 = self.new
    article_3.title = "Creating Cutaway Views"
    article_3.category = "Design. Click. Build"
    article_3.url = "https://www.finewoodworking.com/2019/02/20/sketchup-creating-cutaway-views"

    article_4 = self.new
    article_4.title = "Tapered Sliding Dovetails by Hand"
    article_4.category = "How-to"
    article_4.url = "hhttps://www.finewoodworking.com/2019/02/18/w274-tapered-sliding-dovetails"

    [article_1, article_2, article_3, article_4]
  end
end
