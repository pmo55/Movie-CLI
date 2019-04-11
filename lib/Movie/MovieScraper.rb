class MovieScraper
  def get_movies
    doc= Nokogiri::HTML(open("https://www.the-numbers.com/box-office-records/worldwide/all-movies/cumulative/all-time"))
    doc_2 = Nokogiri::HTML(open("https://www.businessinsider.com/highest-grossing-movies-all-time-worldwide-box-office-2018-4"))
    doc_3 = Nokogiri::HTML(open("https://stats.lineageos.org/"))
    binding.pry
    doc_2.css(".slide").each do |movies|
     movie=Movie.new
     movie.title = movies.css(".slide-title-text").text.gsub(/\A[012345678910]../,"")
     movie.total_box_office = movies.css("p").text.gsub("Global box office: ","").squeeze.gsub(" bilion"," billion")
     movie.studio = movies.css(".image-source").text.gsub("Courtesy of ","").squeeze
    end
  end
  ##Playground
  def get_lineage_stats
    total = 0 
     doc_3 = Nokogiri::HTML(open("https://stats.lineageos.org/"))
     doc_3.css("a").each do |name|
       puts name.text
     end
     doc_3.css(".leaderboard-right").each do |numbers|
       total += numbers.text.to_i
     end
     puts "there are #{total} devices"
  end
end
