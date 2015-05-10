class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def show
    @show_photos = Photo.find_by({ :id => params[:id] })
  end

  def new_form
  end

  def create_row
    create_photo = Photo.new
    create_photo.caption = params["the_caption"]
    create_photo.source = params["the_source"]
    create_photo.save
    redirect_to("http://localhost:3000/photos")
  end

  def destroy
    @destroy_photo = Photo.find_by({ :id => params[:id] }).destroy
    redirect_to("http://localhost:3000/photos")
  end

  def edit_form
    @edit_photo = Photo.find_by({ :id => params[:id] })
    @edit_photo.caption = params["the_caption"]
    @edit_photo.source = params["the_source"]
  end

  def update_row
    @update_photo = Photo.find_by({ :id => params[:id] })
    @update_photo.caption = params["the_caption"]
    @update_photo.source = params["the_source"]
    @update_photo.save
    redirect_to("http://localhost:3000/photos")
  end

end
