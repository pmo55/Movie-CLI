require 'open-uri'
require 'pry'
require 'nokogiri'
require_relative './Movie.rb'
class MovieScraper
  def get_page
   doc= Nokogiri::HTML(open("https://www.rottentomatoes.com/browse/in-theaters/"))
   doc_2= Nokogiri::HTML(open("https://www.businessinsider.com/highest-grossing-movies-all-time-worldwide-box-office-2018-4"))
      binding.pry
  end
  def get_movies

  end
end
MovieScraper.new.get_page


# doc.css("div div div a").text.squeeze
# doc_2.css(".slide").children.css("p").first.text=> "Global box office: $1.341 billion "
# doc_2.css(".slide") => Title, studio, box office
# doc_2.css(".slide").children.css(".image-source")=>movie studio