class ApplicationController < ActionController::Base
  def after_sign_in_path_for(resource)
    case resource
    when User
      user_posts_path
    when AdminUser
      admin_user_posts_path
    end
  end
end
