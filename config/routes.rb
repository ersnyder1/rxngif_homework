Rxngif::Application.routes.draw do
  

get "/pictures/new", :controller => "pictures", :action => "new", :as => "new_picture"
post "/pictures", :controller => "pictures", :action => "create", :as => "pictures"


 get "/pictures", :controller => "pictures", :action => "index" 
 get "/pictures/:id", :controller => "pictures", :action => "show", :as => "picture"
 

get "/pictures/:id/edit", :controller => "pictures", :action => "edit", :as => "edit_picture"
patch "/pictures/:id", :controller => "pictures", :action => "update"


delete "/pictures/:id", :controller => "pictures", :action => "destroy"
  
end