class FineWoodworking::CLI

  def call
    puts "Today's Daily Deals:"
    list_articles
    menu
    goodbye
  end

  def list_articles
    puts <<-DOC.gsub /^\s+/, ""
    1 . Article 1
    2. Article 2
    3. Article 3
    4. Article 4
    DOC

    @articles = FineWoodworking::Article.today

  end

  def menu
    input = nil
    while input != "exit"
      puts "Enter the number of which article you want to read. Type list if you want to see the list of articles again. Type exit if you would like to quit the program."
      input = gets.strip.downcase
      if input.to_i > 0
        puts @deals[input.to_i-1]
      elsif input == "list"
        list_articles
      else
        puts "Input error, please select number 1 - 4, list or exit."

      # case input
      # when "1"
      #   puts "more info on article 1.."
      # when "2"
      #   puts "more info on article 2.."
      # when "3"
      #   puts "more info on article 3.."
      # when "4"
      #   puts "more info on article 4.."
      # when "list"
      #   list_articles
      # else
      #   puts "Input error, please select number 1 - 4, list or exit."
      end
    end
  end

  def goodbye
    puts "See you next time for new articles"
  end

end
