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

end
