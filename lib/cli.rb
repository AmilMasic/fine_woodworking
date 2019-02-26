class FineWoodworking::CLI

  def call
    puts "Today's Daily Deals:"
    list_articles
  end

  def list_articles
    puts <<-DOC
    1 . Article 1
    2. Article 2
    DOC

  end
end
