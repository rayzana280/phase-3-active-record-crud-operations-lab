class Movie < ActiveRecord::Base
    def self.create_with_title(mtitle)
        Movie.create(title: mtitle)
    end 

    def self.first_movie
        Movie.first
    end 

    def self.last_movie 
        Movie.last
    end 

    def self.movie_count
        Movie.count
    end 

    def self.find_movie_with_id(mid)
        Movie.all.find do |movie|
            movie[:id] == mid
        end 
    end 

    def self.find_movie_with_attributes(att)
        Movie.find_by(att)
    end 

    def self.find_movies_after_2002
        Movie.all.filter do |movie|
            movie[:release_date] > 2002
        end 
    end 

    def update_with_attributes(att)
        self.update(att)
    end 

    def self.update_all_titles(ntitle)
        Movie.update(title: ntitle)
    end 

    def self.delete_by_id(nid)
        Movie.find_by(:id == nid).destroy
    end 

    def self.delete_all_movies 
        Movie.destroy_all
    end 
end