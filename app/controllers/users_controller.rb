class UsersController < ApplicationController
  def login
  	
  end

  def index
  	
  end

  def profile
  	
  end


  def login_create

  	@login = User.new(user_params)

  		 @login.save
  	if User.username == Registration.where(username == current_user.username)
  	   flash[:notice] = "Welcome again!"
  		redirect_to users_path
  	else
      flash[:notice] = "Please Sign Up First!"
  		render 'login'
  	end
  	
  end

  def logout
  	@login = Registration.find(params[:id])

  	if @login ==! null
  		params[:id] == 0
  		redirect_to root_path
  	else
  	   render 'login'
  	end
  end

  def user_params
  	params.require(:user).permit(:username, :password)
  	
  end


  def new
  	@user = User.new
  end

  def create

  	@user = Registration.new(register_params)

  	if @user.save

  		redirect_to users_path

  	else

  		render 'new'	
    end
  	
  end

  private
  def register_params

  	params.require(:registration).permit( :firstname, :lastname, :age, :gender , :username, :password , :confirm_password, :email )
  	
  end

 
end
