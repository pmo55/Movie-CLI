require 'open-uri'
require 'pry'
require 'nokogiri'
require_relative './Movie.rb'
class MovieScraper
  def get_page
   doc= Nokogiri::HTML(open("https://www.rottentomatoes.com/browse/in-theaters/"))
      binding.pry
  end
  def get_movies

  end
end
MovieScraper.new.get_page


# doc.css("div div div a").text.squeeze