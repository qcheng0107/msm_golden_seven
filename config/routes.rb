Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  
  
  
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
  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount WebGit::Engine, at: "/rails/git"
end
