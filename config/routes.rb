Rails.application.routes.draw do
  # Routes for the Look resource:
  # CREATE

  get "/", :controller => "looks", :action => "index"

  get "/looks/new", :controller => "looks", :action => "new"
  post "/create_look", :controller => "looks", :action => "create"

  # READ
  get "/looks", :controller => "looks", :action => "index"
  get "/looks/:id", :controller => "looks", :action => "show"

  # UPDATE
  get "/looks/:id/edit", :controller => "looks", :action => "edit"
  post "/update_look/:id", :controller => "looks", :action => "update"

  # DELETE
  get "/delete_look/:id", :controller => "looks", :action => "destroy"
  #------------------------------

  # Routes for the Item resource:
  # CREATE
  get "/items/new", :controller => "items", :action => "new"
  post "/create_item", :controller => "items", :action => "create"

  # READ
  get "/items", :controller => "items", :action => "index"
  get "/items/:id", :controller => "items", :action => "show"

  # UPDATE
  get "/items/:id/edit", :controller => "items", :action => "edit"
  post "/update_item/:id", :controller => "items", :action => "update"

  # DELETE
  get "/delete_item/:id", :controller => "items", :action => "destroy"
  #------------------------------


end
