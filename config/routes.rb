Rails.application.routes.draw do

get    'signup'  => 'users#new'
post   'users'   => 'users#create'
get    'login'   => 'sessions#new'
post   'login'   => 'sessions#create'
delete 'logout'  => 'sessions#destroy'

resources :users
resources :looks do
  resources :eye_items
end

get "/", :controller => "looks", :action => "index"

# Routes for the Eye resource:
# CREATE
get "/eyes/new", :controller => "eyes", :action => "new"
# post "/create_eye", :controller => "eyes", :action => "create"
post "/eyes", :controller => "eyes", :action => "create"

# READ
get "/eyes", :controller => "eyes", :action => "index"
get "/eyes/:id", :controller => "eyes", :action => "show"

# UPDATE
get "/eyes/:id/edit", :controller => "eyes", :action => "edit"
post "/update_eye/:id", :controller => "eyes", :action => "update"
get "/eyes/wallpaper", :controller => "eyes", :action => "wallpaper"


# DELETE
get "/delete_eye/:id", :controller => "eyes", :action => "destroy"
#------------------------------

# Routes for the Cheek resource:
# CREATE
get "/cheeks/new", :controller => "cheeks", :action => "new"
post "/create_cheek", :controller => "cheeks", :action => "create"

# READ
get "/cheeks", :controller => "cheeks", :action => "index"
get "/cheeks/:id", :controller => "cheeks", :action => "show"
get "/cheeks/wallpaper", :controller => "eyes", :action => "wallpaper"


# UPDATE
get "/cheeks/:id/edit", :controller => "cheeks", :action => "edit"
post "/update_cheek/:id", :controller => "cheeks", :action => "update"

# DELETE
get "/delete_cheek/:id", :controller => "cheeks", :action => "destroy"
#------------------------------

# Routes for the Lip resource:
# CREATE
get "/lips/new", :controller => "lips", :action => "new"
post "/create_lip", :controller => "lips", :action => "create"

# READ
get "/lips", :controller => "lips", :action => "index"
get "/lips/:id", :controller => "lips", :action => "show"
get "/lips/wallpaper", :controller => "eyes", :action => "wallpaper"


# UPDATE
get "/lips/:id/edit", :controller => "lips", :action => "edit"
post "/update_lip/:id", :controller => "lips", :action => "update"

# DELETE
get "/delete_lip/:id", :controller => "lips", :action => "destroy"
#------------------------------

# Routes for the Look resource:
# CREATE



get "/looks/new", :controller => "looks", :action => "new"
post "/create_look", :controller => "looks", :action => "create"

# READ
get "/looks", :controller => "looks", :action => "index"
get "/looks/:id", :controller => "looks", :action => "show"
get "/looks/wallpaper", :controller => "eyes", :action => "wallpaper"


# UPDATE
get "/looks/:id/edit", :controller => "looks", :action => "edit"
post "/update_look/:id", :controller => "looks", :action => "update"

# DELETE
get "/delete_look/:id", :controller => "looks", :action => "destroy"
#------------------------------


# Routes for the Lip_item resource:
# CREATE
get "/lip_items/new", :controller => "lip_items", :action => "new"
post "/create_lip_item", :controller => "lip_items", :action => "create"

# READ
get "/lip_items", :controller => "lip_items", :action => "index"
get "/lip_items/:id", :controller => "lip_items", :action => "show"

# UPDATE
get "/lip_items/:id/edit", :controller => "lip_items", :action => "edit"
post "/update_lip_item/:id", :controller => "lip_items", :action => "update"

# DELETE
get "/delete_lip_item/:id", :controller => "lip_items", :action => "destroy"
#------------------------------

# Routes for the Cheek_item resource:
# CREATE
get "/cheek_items/new", :controller => "cheek_items", :action => "new"
post "/create_cheek_item", :controller => "cheek_items", :action => "create"

# READ
get "/cheek_items", :controller => "cheek_items", :action => "index"
get "/cheek_items/:id", :controller => "cheek_items", :action => "show"

# UPDATE
get "/cheek_items/:id/edit", :controller => "cheek_items", :action => "edit"
post "/update_cheek_item/:id", :controller => "cheek_items", :action => "update"

# DELETE
get "/delete_cheek_item/:id", :controller => "cheek_items", :action => "destroy"
#------------------------------

# Routes for the Eye_item resource:
# CREATE
get "/eye_items/new", :controller => "eye_items", :action => "new"
post "/create_eye_item", :controller => "eye_items", :action => "create"

# READ
get "/eye_items", :controller => "eye_items", :action => "index"
get "/eye_items/:id", :controller => "eye_items", :action => "show"

# UPDATE
get "/eye_items/:id/edit", :controller => "eye_items", :action => "edit"
post "/update_eye_item/:id", :controller => "eye_items", :action => "update"

# DELETE
get "/delete_eye_item/:id", :controller => "eye_items", :action => "destroy"
#------------------------------




end
