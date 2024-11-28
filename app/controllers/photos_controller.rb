class PhotosController < ApplicationController
  def index
    if params[:random_img]
      @random_img = Unsplash::Photo.random
    end
  end
end
