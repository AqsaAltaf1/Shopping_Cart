class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user, except: %i[index new create get_dataset]
	
  def index
    @users=User.all
		authorize @users
  end

  def show
		authorize @user
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
		authorize @user
  end

	def update
		authorize @user
		if @user.update(user_params)
			redirect_to user_path(@user)
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
    params.require(:user).permit(:first_name, :last_name, :country, :city, :role, :status, :address, :phone_number,:profile)
	end

	def set_user
		@user = User.find(params[:id])
	end

end
