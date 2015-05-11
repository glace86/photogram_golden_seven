class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def show
    @number = params[:id]
    @list_of_photos = Photo.all
    @photoreq = @list_of_photos.find(@number)
  end

  def new_form
  end

  def create_row
    p = Photo.new
    p.caption = params[:the_caption]
    p.source = params[:the_source]
    p.save

    redirect_to("http://localhost:3000/photos")
  end

  def destroy
    i = params[:id]
    p = Photo.find(i)
    p.destroy

    redirect_to("http://localhost:3000/photos")
  end

  def edit_form
    i = params[:id]
    @photonw = Photo.find(i)
  end

  def update_row
    i = params[:id]
    p = Photo.find(i)
    p.source = params[:the_source]
    p.caption = params[:the_caption]
    p.save
  end

end
