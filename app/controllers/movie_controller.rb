class MovieController < ApplicationController
    def new_form

       render("movie_templates/new_form.html.erb")
    end
   
   def create_row
       
       m = Movie.new
       m.title = params["the_title"]
       m.year = params["the_year"]
       m.duration = params["the_duration"]
       m.description = params["the_description"]
       m.image_url = params["the_url"]
       m.save
    #   @the_id = d.id
       
       @movie_count = Movie.count
       
        redirect_to "/movies/#{m.id}"
   end


    def index
       
       @all_movies = Movie.all
       
       
       render("movie_templates/index.html.erb")
    end

    def show
   
       the_id_number = params["the_id"]
       movie = Movie.find(the_id_number)
       @the_title = movie.title
       @the_year = movie.year
       @the_duration = movie.duration
       @the_description = movie.description
       @url = movie.image_url
       @an_id = params["the_id"]
   
   render("movie_templates/show.html.erb")
    end
   
    def edit_form
        
        the_id = params["an_id"]
        movie = Movie.find(the_id)
        @the_title = movie.title
        @the_year = movie.year
        @the_duration = movie.duration
        @the_description = movie.description
        @url = movie.image_url
        @an_id = params["an_id"]
        
        
       render("movie_templates/edit_form.html.erb")
    end
    
    def update_row
        
        an_id = params["some_id"]
       movie = Movie.find(an_id)
       movie.title = params[:title]
        movie.year = params[:year]
        movie.duration = params[:duration]
        movie.description = params[:description]
        movie.image_url = params[:image_url]
        movie.director_id = params[:director_id]
        movie.save
      @the_title = movie.title
       @the_year = movie.year
       @the_duration = movie.duration
       @the_description = movie.description
       @url = movie.image_url
       @an_id = params["some_id"]
       
      redirect_to "/movies/#{movie.id}"
    end
    
    def destroy_row
    
     i =Movie.find(params["toast_id"])
     i.destroy
     @movie_count = Movie.count
       redirect_to("/movies") 
     
    end
end