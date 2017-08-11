class LoginController < ApplicationController

# get '/login/new' do

#   erb :'login/new'
# end

def new

  render  login_new_path
end

def create
  p "hitting create"
  # CHANGE FOR OTHER AUTHENTICATE METHOD!!!!!!!!!!!!!!!!!!!!!!!!
 @user = User.find_by(email: params[:user][:email])
  # AUTHENTICATES if USER is found
  if @user && @user.authenticate(params[:user][:password])
    session[:user_id] = @user.id
    # can also redirect to user profile
    redirect "/"
  else
    # keep the error messages vague
    @errors = ["Your email or password was wrong"]
    # have them log in again
    render login_new_path
  end
end

def destroy
  session[:user_id] = nil
  redirect_to "/"

end

# # Make the log out like this, a GET request, to make it a link
# get '/login/logout' do
#   session[:user_id] = nil
#   redirect '/'
# end


end