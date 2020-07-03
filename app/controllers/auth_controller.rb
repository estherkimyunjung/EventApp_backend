class AuthController < ApplicationController
    skip_before_action :logged_in?

    def create
        user = User.find_by(user_name: params[:user_name])

        if user && user.authenticate(params[:password])
            render json: {username: user.user_name, token: encode_token({user_id: user.id})}
        else
            render json: {error: "invalid username or password"}
        end
    end
end
