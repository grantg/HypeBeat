class RegistrationsController < Devise::RegistrationsController
  # Before_actions here?
  def update
    if params[:user][:password].blank?
      params[:user].delete(:password)
      params[:user].delete(:password_confirmation)
    end
    
     respond_to do |format|
      if @user.update_attributes(account_update_params)
        format.html { redirect_to edit_user_registration_path, notice: 'Your account has been updated!' }
        format.json { head :no_content }
      else
        format.html { redirect_to edit_user_registration_path, alert: 'There was an error while updating your account. Please verify all data has been entered correctly.' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end
  
  private

  def sign_up_params
    params.require(:user).permit(:fname, :lname, :email, :password, :password_confirmation, :username, :bio)
  end

  def account_update_params
    params.require(:user).permit(:fname, :lname, :email, :username, :bio)
  end
  
end