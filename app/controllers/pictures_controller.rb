class PicturesController < ApplicationController
  include Rails.application.routes.url_helpers

  def index
    pictures = Picture.all
    response = []
    pictures.each do |picture|
      response << { id: picture.id, image_url: url_for(picture.image) }
    end
    render json: response, status: :ok
  end

  def show
    picture = Picture.find(params[:id])
    url = { image_url: url_for(picture.image) }
    if picture
      render json: url, status: :ok
    else
      render json: picture.errors, status: :not_found
    end
  end
end
