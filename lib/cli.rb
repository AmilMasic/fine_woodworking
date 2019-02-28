require "pry"
class FineWoodworking::CLI

  def call
    list_articles
    menu
    goodbye
  end

  def list_articles
    puts "Today's Articles on the front page of FineWoodworking."

    # Scraping the articles to provide a list view
    @articles = FineWoodworking::Article.today
    # assingning a number to index to list the articles correctly
    @articles.each.with_index(1) do |article, i|
      puts "#{i}. #{article[:title]} - #{article[:category]}. - #{article[:teaser]}"
    end
  end

  def menu
      input = nil
      while input != "exit"
        puts "Enter the number of which article you want to read. Type list if you want to see the list of articles again. Type exit if you would like to quit the program."

        input = gets.strip.downcase

        if input.to_i.between?(1,4)
          article = @articles[input.to_i-1]

          #scraping the content of the selected article, just to avoid scraping too much

          FineWoodworking::Article.scrape_article_content(article)
          puts "#{article[:author]}"
          puts "#{article[:content]}"

        elsif input == "list"
          #providing a list view for the user
          list_articles
        else
          puts "Input error, please select article 1 - 4, list or exit."
        end
      end
    end

  def goodbye
    puts "See you next time for new articles"
  end

end
