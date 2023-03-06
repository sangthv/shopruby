class StudentsController < ApplicationController

    def index
        # @user= User.find(params[:id])
        # if @user
        #  @students = @user.students
        # end
        @students = Student.all
    end

    def show
        @student = Student.find(params[:id])
        # if @student
        #   @students = current_user.students
        # end
    end
    def new
        @student = Student.new
    end
    def edit
        @student = Student.find(params[:id])
    end

    def create
    @student = Student.new(student_params)
        if @student .save
            flash[:success]= "Student created successfully"
            redirect_to students_path
        else
            flash[:success] = "Register failed"
            render :new
        end
    end

    def destroy
        Student.find(params[:id]).destroy
        redirect_to students_path
    end

    def student_params
        params.require(:student).permit(:name, :age, :gender, :class_name)
    end
end
