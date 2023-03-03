class UsersController < ApplicationController

    # def index
    #   render: "users/index"
    # end

    def index
        @users = User.all
    end

    def show
        @user = User.find(params[:id])
        @user= User.find_by id:params[:id]
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
    end

    def update
        @user = User.find(params[:id])
        if @user.update(users_params)
            redirect_to users_path
        else
            render user_edit_path(@user)
        end
    end

    def destroy
        User.find(params[:id]).destroy
        redirect_to users_path
    end


private
    def user_params
        params.require(:user).permit(:name, :password, :password_confirmation)
    end


    def users_params
        params.require(:user).permit(:name, :password)
    end
end
