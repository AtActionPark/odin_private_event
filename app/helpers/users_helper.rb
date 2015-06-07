module UsersHelper

  def sign_in user
    cookies.permanent[:user] = user.name
    @current_user = user
  end

  def current_user
    @current_user ||= User.find_by(name: cookies.permanent[:user])
  end

  def signed_in?
    !current_user.nil?
  end

  def sign_out
    @current_user = nil
    cookies.delete(:user)
  end

end
