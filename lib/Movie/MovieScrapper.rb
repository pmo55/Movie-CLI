require 'open-uri'
require 'pry'
require 'nokogiri'
require_relative './Movie.rb'
class MovieScraper
  def get_movies
    doc_2 = Nokogiri::HTML(open("https://www.businessinsider.com/highest-grossing-movies-all-time-worldwide-box-office-2018-4"))
    doc_2.css(".slide").each do |movies|
     movie=Movie.new
     movie.title = movies.css(".slide-title-text").text.gsub(/\A[012345678910]../,"")
     movie.total_box_office = movies.css("p").text.gsub("Global box office: ","").squeeze.gsub(" bilion"," billion")
     movie.studio = movies.css(".image-source").text.gsub("Courtesy of ","").squeeze
    end
  end
end
MovieScraper.new.get_movies


# doc.css("div div div a").text.squeeze
# doc_2.css(".slide").children.css("p").first.text=> "Global box office: $1.341 billion "
# doc_2.css(".slide") => Title, studio, box office
# doc_2.css(".slide").children.css(".image-source")=>movie studio
