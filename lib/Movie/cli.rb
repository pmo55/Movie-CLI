require "./lib/Movie/Movie.rb"
require "./lib/Movie/MovieScrapper.rb"

class Cli 

  def start
    list_movies
  
  end
  def list_movies
    puts "Top 10 box office movies of all time:"
    Movie.all.each do |movie|
      puts movie.title
    end
  end
  def menu
    puts "please enter the corresponding number to the left of the movie for more info, or type in exit to leave application"
    input=gets.strip
    while input !=exit
    Movie.all.each do |movie|
      if movie.title.include?(input)
        puts "Total box office sales: #{movie.total_box_office}"
        puts "Studio: #{movie.studio}"
        break
      else put "please enter a valid entry"
    end
  end
  end
end

