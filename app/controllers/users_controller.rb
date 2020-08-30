class UsersController < ApplicationController

    def index
        @users = User.all
    end

    def show
        @user = User.find(params[:id])
    end

    def destroy
        User.find(params[:id]).destroy
        redirect_to users_path
    end

    private

    def user_params
        params.require(:user).permit(:name)
    end
end
