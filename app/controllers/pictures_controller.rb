class PicturesController < ApplicationController
  def show
  	@id = params[:id]
  	@p = Picture.find(@id)
  end

  def index
  	@list_of_pictures = Picture.all
  end

  def new
  end

  def create
  	@picture = Picture.new
	@picture.caption = params[:caption]
	@picture.source = params[:source]
	@picture.save
  redirect_to posts_url
  end

  def destroy
  	@id = params[:id]
  	@pic_to_delete = Picture.find(@id)
  	@pic_to_delete.destroy
    redirect_to pictures_url
  end

def edit
	@id = params[:id]
	@p = Picture.find(@id)
	@picture_caption = @p.caption
	@picture_source = @p.source
end

def update
@id = params[:id]
@p = Picture.find(@id)
@p.caption= params[:caption] 
@p.source= params[:source]
@p.save
redirect_to picture_url(pic.id)
end


end
