class UsersController < ApplicationController

    # def index
    #   render: "users/index"
    # end

    def index
        @users = User.all
    end

    def show
        @user = User.find(params[:id])
    end

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            flash[:success]= "User created successfully"
            redirect_to users_path
        else
            flash[:success] = "Register failed"
            render :new
        end
    end

    def edit
        @user = User.find(params[:id])
        if @user.update_attributes(user_params)
            redirect_to users_show_path, :id => @user
        else
            render users_edit_path
        end
    end

    def destroy
        User.find(params[:id]).destroy
        redirect_to users_list_path
    end


private
    def user_params
        params.require(:user).permit(:name, :password, :password_confirmation)
    end
end
