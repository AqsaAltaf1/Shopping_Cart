class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user, except: %i[index new create]
	
  def index
	  @users=User.order(:id)
  end

  def show
  end

	def new
	  @user = User.new
	end 

	def create
		@user = User.new(user_params)
		if @user.save
			redirect_to users_index_path
		else
			render :new
		end
	end

  def edit
  end

	def update
		if @user.update(user_params)
			redirect_to users_index_path
		else
			render :edit
		end
	end

	def destroy
	  @user.destroy
		redirect_to users_index_path
	end

	private

	def user_params
    params.require(:user).permit(:First_Name, :Last_Name, :Country, :City, :role, :status, :Address, :phone_number)
	end

	def set_user
		@user = User.find(params[:id])
	end

end
