class PicturesController < ApplicationController

before_action :ensure_logged_in, except: %i(:show :index)

def index
  @pictures = Picture.young
end

def search
  @pictures = Picture.where("created_at LIKE ?", "%#{params[:q]}%")
end

def onemonth
  @pictures = Picture.old
end

def new
  @picture = Picture.new
end

def create
  @picture = Picture.new(picture_params)
  @picture.user_id = params[:current_user]

  if @picture.save
    redirect_to "/pictures"
  else
    render :new
  end
end

def edit
  @picture = Picture.find(params[:id])
end

def destroy
  @picture = Picture.find(params[:id])
  @picture.destroy
  redirect_to "/pictures"
end

def update
  @picture = Picture.find(params[:id])

  @picture.update(picture_params)
  redirect_to pictures_path

end

def show
  @picture = Picture.find(params[:id])
end

end

private
def picture_params
  params.require(:picture).permit(:artist, :title, :url)
end
