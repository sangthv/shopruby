class StudentController < ApplicationController

    def index
        @user= User.find(params[:id])
        if @user
         @students = @user.students
        end
    end

    def show
        @student = Student.find(params[:id])
        # if @student
        #   @students = current_user.students
        # end
    end
end
