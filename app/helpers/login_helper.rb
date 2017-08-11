module LoginHelper
 def current_user
    @current_user = User.find_by(id: login[:business_id])
  end

  def logged_in?
    session[:user_id] != nil
  end

  def owner?
    @user.id == session[:user_id]
  end

  def authenticate!
   redirect_to root_url unless logged_in? && owner?
  end
end