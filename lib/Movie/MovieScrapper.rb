require 'open-uri'
require 'pry'
require 'nokogiri'
require_relative './Movie.rb'
class MovieScraper
  def get_page
    Nokogiri::HTML(open("https://www.rottentomatoes.com/browse/in-theaters/"))
  end
  def get_movies
    self.get_page.search("h3").text
  end
  binding.pry
end