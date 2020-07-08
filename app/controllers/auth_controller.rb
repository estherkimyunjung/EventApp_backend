class AuthController < ApplicationController
    skip_before_action :logged_in?

    def create
        user = User.find_by(username: params[:username])
        if user && user.authenticate(params[:password])
            render json: {username: user.username, contact: user.contact, age: user.age, supporter: user.supporter, role: user.role, events: user.events, id: user.id, token: encode_token({user_id: user.id})}
        else
            render json: {error: "invalid username or password"}
        end
    end
end

