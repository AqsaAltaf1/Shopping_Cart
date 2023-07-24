# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]
  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  def create
    super do |resource|
      unless resource.active?
        sign_out
        flash[:alert] = "Yor are not active yet."
        redirect_to root_path
        return
      end
    end
  end
  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end


  def after_sign_in_path_for(_resource)
    if current_user.superadmin?
     users_index_path
    else
      root_path
    end
  end 

  #  def after_sign_in_path_for(_resource)
  #   if current_user&.inactive?
  #     root_path
  #   else
  #     users_path
  #   end
  # end 
  # def after_sign_in_path_for(_resource)
   
  # end
  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end
