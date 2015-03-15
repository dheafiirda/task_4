class PhotosController < ApplicationController
  def new
  	@foto = Photo.new
  end

  def edit
    @foto = Photo.find(params[:id])
  end

  def index
  	@fotos = Photo.all
  end

  def show
    @foto = Photo.find(params[:id])
  end

  def destroy
    @foto = Photo.find(params[:id])
    if @foto.destroy()
      redirect_to photos_path
    else
      redirect_to photots_path
    end
  end

  def update
    @foto = Photo.find(params[:id])
    if @foto.update(param_foto)
      redirect_to edit_photo_path(@foto)
    else
      render "edit"
    end
  end

  def create
  	@foto = Photo.new(param_foto)
  	if @foto.save
  	  redirect_to new_photo_path
  	else
  	  render "new"
  	end
  end

  private
  	def param_foto
  	  params.require(:photo).permit(:title, :gambar)
  	end


end
