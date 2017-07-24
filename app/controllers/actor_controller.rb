class ActorController < ApplicationController
    def new_form

       render("actor_templates/new_form.html.erb")
    end
   
   def create_row
       
       a = Actor.new
       a.name = params["the_name"]
       a.bio = params["the_bio"]
       a.dob = params["the_dob"]
       a.image_url = params["the_url"]
       a.save
    #   @the_id = d.id
       
       @actor_count = Actor.count
       
    #   redirect_to("/directors/<% @the_id %>")
      render("actor_templates/create_row.html.erb") 
   end


    def index
       
       @all_actors = Actor.all
       
       
       render("actor_templates/index.html.erb")
    end

    def show
   
       the_id_number = params["the_id"]
       actor = Actor.find(the_id_number)
       @the_name = actor.name
       @the_bio = actor.bio
       @the_dob = actor.dob
       @url = actor.image_url
       @an_id = params["the_id"]
   
   render("actor_templates/show.html.erb")
    end
   
    def edit_form
        
        the_id = params["an_id"]
        actor = Actor.find(the_id)
      @the_name = actor.name
      @the_bio = actor.bio
      @the_dob = actor.dob
      @the_url = actor.image_url
      @an_id = params["an_id"]
        
       render("actor_templates/edit_form.html.erb")
    end
    
    def update_row
        
        an_id = params["some_id"]
       actor = Actor.find(an_id)
       @the_name = actor.name
       @the_bio = actor.bio
       @the_dob = actor.dob
       @the_url = actor.image_url
       @the_time = actor.created_at
       @an_id = params["some_id"]
      render("actor_templates/update_row.html.erb")
    end
    
    def destroy_row
    
     i =Actor.find(params["toast_id"])
     i.destroy
     @actor_count = Actor.count
       redirect_to("/actors") 
     
    end
end