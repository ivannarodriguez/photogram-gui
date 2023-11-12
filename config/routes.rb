Rails.application.routes.draw do
  
  get("/", {:controller => "users", :action => "index"})
  get("/users", {:controller => "users", :action => "index"})
  get("/users/:username", {:controller => "users", :action => "show_details"})
  post("/add_user", {:controller => "users", :action => "insert_user"})
  post("/update_user/:username", {:controller => "users", :action => "update_user"})
  
  get("/photos", {:controller => "photo", :action => "index"})
  get("/photos/:photo_id", {:controller => "photo", :action => "show_details"})
  get("/delete_photo/:photo_id", {:controller => "photo", :action => "delete_photo"})
  post("/insert_photo_record", {:controller => "photo", :action => "insert_new_photo"})
  post("/update_photo/:photo_id", {:controller => "photo", :action => "update_photo"})

end
