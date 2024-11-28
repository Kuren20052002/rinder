class PhotosController < ApplicationController
  def index
    if params[:random_img]
      @random_img = Unsplash::Photo.random
    end

    if params[:img_search_word]
      @random_img = nil
      @search_imgs = Unsplash::Photo.search(params[:img_search_word])
    end
  end
end
