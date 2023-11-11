Rails.application.routes.draw do
  
  get("/", {:controller => "users", :action => "index"})
  get("/users", {:controller => "users", :action => "index"})
  get("/users/:username", {:controller => "users", :action => "show_details"})
  
  get("/photos", {:controller => "photo", :action => "index"})
  get("/photos/:photo_id", {:controller => "photo", :action => "show_details"})

end
