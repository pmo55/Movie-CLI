class Cli
  def start
    MovieScraper.new.get_movies
    list_movies
    menu
    MovieScraper.new.get_lineage_stats
  end
  
  def list_movies
    puts "Top 10 box office movies of all time:"
    Movie.all.each.with_index(1) do |movie, i|
      puts  "#{i}. #{movie.title}"
    end
  end
  
  def menu
    input= nil
      while input != "exit"
       puts "please enter the corresponding number to the left of the movie for more info, type in list to see the movie list, or type in exit to leave application"
       input=gets.strip.downcase
        if input.to_i >0 && input.to_i <=10
        puts  "Movie Title: #{Movie.all[input.to_i-1].title}"
        puts "Total Box Office: #{Movie.all[input.to_i-1].total_box_office}"
        elsif input =="list"
        list_movies
        elsif input=="exit"
        puts "Thank you, and have a nice day!"
        else puts "That is not a valid entry"
      end
    end
  end
end
