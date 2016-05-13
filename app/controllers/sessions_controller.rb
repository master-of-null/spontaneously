class SessionsController < ApplicationController
  def new_user
  end

  def new_vendor
    
  end

  def create_user
    	@user = User.find_by(username: params[:username]).try(:authenticate, params[:password])
    	return render action: 'new' unless @user

    	session[:user_id] = @user.id
    	redirect_to packages_index_path
  end

  def create_vendor
    vendor = Vendor.find_by_email(params[:email])
    if vendor && vendor.authenticate(params[:password])
      session[:vendor_id] = vendor.id
      redirect_to root_url, notice: "Logged in!"
    else
      render :new
      flash[:notice] = "Invalid Credentials"
    end
  end

  def destroy
    if current_vendor
      session[:vendor_id] = nil
      redirect_to root_url, notice: "Logged out!"
    else
      session[:user_id] = nil
      redirect_to root_url, notice: "Logged out!"
    end
  end

end
