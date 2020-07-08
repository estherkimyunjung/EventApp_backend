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
        @user = User.new(user_params)
        if @user.valid?
            @user.save
            render json: { user: UserSerializer.new(@user) }, status: :created
        else
            render json: { error: 'failed to create user'}, status: :not_acceptable
        end
    end

    def update
        @user = User.find(params[:id])
        if @user.update(user_params)
            
            render json: @user
        else 
            render json: { error: 'failed to update user'}, status: :not_acceptable
        end
    end

    private
    def user_params
        params.permit(:username, :password, :password_confirmation, :contact, :age, :supporter, :role)
    end

end
