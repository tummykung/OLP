class StaticPagesController < ApplicationController
  def home
    if signed_in?
      @micropost  = current_user.microposts.build
      @feed_items = current_user.feed.paginate(page: params[:page])
    end
  end

  def help
  end

  def about
  end

  def contact
  end

  def learnstream
  end

  def courses
  end

  def math40
  end
  
  def math132
  end

  def secret
  end
end
