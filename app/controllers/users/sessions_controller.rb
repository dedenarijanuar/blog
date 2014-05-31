class Users::SessionsController < Devise::SessionsController

  def create_with_facebook
    user = User.find_for_facebook_oauth(env["omniauth.auth"])
    set_flash_message(:notice, :signed_in) if is_flashing_format?
    sign_in(user)
    redirect_to root_url
  end

end
