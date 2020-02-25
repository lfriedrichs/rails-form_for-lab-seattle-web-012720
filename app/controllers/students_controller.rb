class StudentsController < ApplicationController

    def index
        @students = Student.all
    end

    def new
        @student = Student.new
    end

    def create
        @student = Student.create(params.require(:student).permit(:first_name, :last_name))
        redirect_to student_path(@student)
    end

    def edit
        @student = Student.find_by_id(params.require(:id))
    end

    def show
        @student = Student.find_by_id(params.require(:id))
    end

    def update
        @student = Student.find_by_id(params.require(:id))
        @student.update(params.require(:student).permit(:first_name, :last_name))
        redirect_to student_path(@student)
    end

end