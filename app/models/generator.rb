class Generator < ActiveRecord::Base

  # These attributes are set during initialization.
  # attr_accessor :omdb_key, :title, :year

  # These attributes are populated only when download_details() is invoked.
  attr_accessor :plot, :rated, :runtime, :poster_url, :director_name

  # This is the object initializer (the "constructor")
  # def initialize(omdb_key, the_title, the_year)
  #   self.omdb_key = omdb_key
  #   self.title = the_title
  #   self.year = the_year
  # end

  # Downloads additional movie data
  def download_details
    url = "http://www.omdbapi.com/?i=#{self.omdb_key}&plot=full&r=json"
    json_string_data = open(url).read
    movie_data = JSON.parse(json_string_data)

    self.plot = movie_data["Plot"]
    self.rated = movie_data["Rated"]
    self.runtime = movie_data["Runtime"]
    self.poster_url = movie_data["Poster"]
    self.director_name = movie_data["Director"]
  end
end
