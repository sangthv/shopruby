class StudentsController < ApplicationController

    def index
        @students = Student.all
    end

    def show
        @student = Student.find(params[:id])
    end

    def new
        @student = Student.new
    end

    def edit
        @student = Student.find(params[:id])
    end

    def create
        @student = current_user.students.build student_params
        if @student.save
        redirect_to students_path
        else
            binding.pry
            render :action => 'new'
        end 
    end

    def update
        @student = Student.find(params[:id])
        if @student.update(student_params)
            redirect_to students_path
        else
            render edit_student_path(@student)
        end
    end

    def destroy
        Student.find(params[:id]).destroy
        redirect_to students_path
    end

    def student_params
        params.require(:student).permit :name, :age, :gender, :class_name, parents_attributes: [:name, :age, :gender]
    end
end
