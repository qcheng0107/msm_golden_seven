class DirectorController < ApplicationController
    def new_form

       render("dir_templates/new_form.html.erb")
    end
   
   def create_row
       
       d = Director.new
       d.name = params["the_name"]
       d.bio = params["the_bio"]
       d.dob = params["the_dob"]
       d.image_url = params["the_url"]
       d.save
    #   @the_id = d.id
       
       @director_count = Director.count
       
    #   redirect_to("/directors/<% @the_id %>")
      render("dir_templates/create_row.html.erb") 
   end


    def index
       
       @all_directors = Director.all
       
       
       render("dir_templates/index.html.erb")
    end

    def show
   
       the_id_number = params["the_id"]
       dir = Director.find(the_id_number)
       @the_name = dir.name
       @the_bio = dir.bio
       @the_dob = dir.dob
       @url = dir.image_url
       @an_id = params["the_id"]
   
   render("dir_templates/show.html.erb")
    end
   
    def edit_form
        
        the_id = params["an_id"]
        dir = Director.find(the_id)
        @the_name = dir.name
        @the_bio = dir.bio
        @the_dob = dir.dob
        @the_url = dir.image_url
        @an_id = params["an_id"]
        dir.save
        
        render("dir_templates/edit_form.html.erb")
    end
    
    def update_row
        
        an_id = params["some_id"]
       dir = Director.find(an_id)
       @the_name = dir.name
       @the_bio = dir.bio
       @the_dob = dir.dob
       @the_url = dir.image_url
       @the_time = dir.created_at
       @an_id = params["some_id"]
      render("dir_templates/update_row.html.erb")
    end
    
    def destroy_row
    
     i =Director.find(params["toast_id"])
     i.destroy
     @director_count = Director.count
       redirect_to("/directors") 
     
    end
end