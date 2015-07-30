class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def new_form

  end

  def create_row
    new_row = Photo.new
    new_row.source = params['the_source']
    new_row.caption = params['the_caption']
    new_row.save
    redirect_to('http://localhost:3000/photos')
  end

  def show
    @photo = Photo.find(params['id'])
  end

  def edit_form
    @photo_to_edit = Photo.find(params['id'])
  end

  def update_row
    @photo_to_update = Photo.find(params['id'])
    @photo_to_update.source = params['the_source']
    @photo_to_update.caption = params['the_caption']
    @photo_to_update.save
    redirect_to('http://localhost:3000/photos')
  end

  def destroy
    @photo_to_destroy = Photo.find(params['id'])
    @photo_to_destroy.destroy
    redirect_to('http://localhost:3000/photos')
  end


end
