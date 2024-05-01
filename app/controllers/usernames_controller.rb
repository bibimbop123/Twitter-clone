class UsernamesController < ApplicationController 
    before_action :authenticate_user!
    before_action :set_user, only: [:update]
    skip_before_action :redirect_to_username_form

    def new
        @username = User.new
        end

    def update
        @user = User.find(params[:id])
        if @user.update(username_params)
            redirect_to dashboard_path
        else
            render dashboard_path
        end
    end

    private

    def username_params
        params.require(:user).permit(:username)
    end
end