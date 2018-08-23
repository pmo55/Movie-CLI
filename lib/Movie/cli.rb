require "./lib/Movie/Movie.rb"
require "./lib/Movie/MovieScrapper.rb"

class Cli 

  def start
    list_movies
    menu
  end
  def list_movies
   @movies=[]
    puts "Top 10 box office movies of all time:"
    Movie.all.each.with_index(1) do |movie, i|
      @movies << movie
      puts  "#{i}. #{movie.title}"
    end
    binding.pry
  end
  def menu
    input= nil
    while input != "exit"
    puts "please enter the corresponding number to the left of the movie for more info, or type in exit to leave application"
    input=gets.strip
    puts @movies[input.to_i-1].title
    puts @movies[input.to_i-1].studio
    puts @movies[input.to_i-1].total_box_office
  end
end
end
