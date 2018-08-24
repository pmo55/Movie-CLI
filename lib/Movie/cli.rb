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
  end
  def menu
    input= nil
    while input != "exit"
    puts "please enter the corresponding number to the left of the movie for more info, or type in exit to leave application"
    input=gets.strip

    if input.to_i >0 && input.to_i <=10
    puts  "Movie Title: #{@movies[input.to_i-1].title}"
    puts "Total Box Office: #{@movies[input.to_i-1].total_box_office}"
    elsif input=="exit"
    puts "Thank you, and have a nice day!"
    else puts "That is not a valid entry"
      end
    end
  end
end
