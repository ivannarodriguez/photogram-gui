class PhotoController < ApplicationController
  
  def index
    @list_of_photos = Photo.all.order({:created_at => :desc})
    render({:template => "photos_templates/index"})
  end

  def show_details
    input_photo_id = params["photo_id"]
    @photo = Photo.where({:id => input_photo_id})[0]
    render({:template => "photos_templates/show_details"})
  end

  def delete_photo
    input_photo_id = params["photo_id"]
    photo = Photo.where({:id => input_photo_id})[0]
    photo.destroy
    redirect_to("/photos")
  end

  def insert_new_photo
    input_image = params["input_image"] # name of form in index.html
    input_caption = params["input_caption"]
    input_owner_id = params["input_owner_id"]

    new_photo = Photo.new

    new_photo.image = input_image
    new_photo.caption = input_caption
    new_photo.owner_id = input_owner_id

    new_photo.save

    redirect_to("/photos/" + new_photo.id.to_s)
  end

  def update_photo
    input_image = params["input_image"] # name of form in index.html
    input_caption = params["input_caption"]
    input_owner_id = params["input_owner_id"]

    photo_id = params["photo_id"]
    photo = Photo.where({:id => photo_id})[0]

    photo.image = input_image
    photo.caption = input_caption

    photo.save

    redirect_to("/photos/" + photo.id.to_s)
  end

end
