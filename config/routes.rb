Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  
  # Directors
  
  # CREATE
  get("/directors/new", { :controller => "director", :action => "new_form" })
  get("/create_director", { :controller => "director", :action => "create_row" })

  # READ
  get("/directors", { :controller => "director", :action => "index" })
  get("/directors/:the_id", { :controller => "director", :action => "show" })

  # UPDATE
  get("/directors/:an_id/edit", { :controller => "director", :action => "edit_form" })
  get("/update_director/:some_id", { :controller => "director", :action => "update_row" })

  # DELETE
  get("/delete_director/:toast_id", { :controller => "director", :action => "destroy_row" })
  
  
  # Actors
  
  # CREATE
  get("/actors/new", { :controller => "actor", :action => "new_form" })
  get("/create_actor", { :controller => "actor", :action => "create_row" })

  # READ
  get("/actors", { :controller => "actor", :action => "index" })
  get("/actors/:the_id", { :controller => "actor", :action => "show" })

  # UPDATE
  get("/actors/:an_id/edit", { :controller => "actor", :action => "edit_form" })
  get("/update_actor/:some_id", { :controller => "actor", :action => "update_row" })

  # DELETE
  get("/delete_actor/:toast_id", { :controller => "actor", :action => "destroy_row" })
  
  # Movies
  
  # CREATE
  get("/movies/new", { :controller => "movie", :action => "new_form" })
  get("/create_movie", { :controller => "movie", :action => "create_row" })

  # READ
  get("/movies", { :controller => "movie", :action => "index" })
  get("/movies/:the_id", { :controller => "movie", :action => "show" })

  # UPDATE
  get("/movies/:an_id/edit", { :controller => "movie", :action => "edit_form" })
  get("/update_movie/:some_id", { :controller => "movie", :action => "update_row" })

  # DELETE
  get("/delete_movie/:toast_id", { :controller => "movie", :action => "destroy_row" })
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount WebGit::Engine, at: "/rails/git"
end
