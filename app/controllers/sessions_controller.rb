class SessionsController < ApplicationController
  skip_before_action :require_signin, only: [:create]

  def create
    @user = User.find_or_create_from_omniauth(request.env['omniauth.auth'])
    session[:user_id] = @user.id
    redirect_to root_path
  end

  def destroy
    reset_session
    redirect_to signin_path
  end

  private

  def auth_hash
    request.env['omniauth.auth']
  end

end
