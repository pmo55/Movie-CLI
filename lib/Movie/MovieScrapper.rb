require 'open-uri'
require 'pry'
require 'nokogiri'
require_relative './Movie.rb'
class MovieScraper
  def get_page
    doc = Nokogiri::HTML(open("https://www.rottentomatoes.com/browse/in-theaters/"))
  end
  

end