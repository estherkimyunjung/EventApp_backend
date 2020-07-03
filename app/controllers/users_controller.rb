class UsersController < ApplicationController
    skip_before_action :logged_in?, only: [:create, :index]

    def index
        @users = User.all
        render json: @users
    end

    def show
      @user = User.find(params[:id])
      render json: @user
    end

    def create
        @user = User.create(user_params)
        if @user.valid?
            render json: { user: UserSerializer.new(@user) }, status: :created
        else
            render json: { error: 'failed to create user'}, status: :not_acceptable
        end
    end

    

    private
    def user_params
        params.require(:user).permit(:user_name, :password, :contact, :age, :supporter, :role, :secret_code)
    end
end
