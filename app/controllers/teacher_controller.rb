class TeacherController < ApplicationController
    def index
        @teachers = Teacher.all
        @message = "Hi"
    end

    def create
        teacher = Teacher.new

        teacher.name = params[:name]
        teacher.mobile = params[:mobile]
        teacher.email = params[:email]
        teacher.desc = params[:desc]

        teacher.save

        redirect_to '/teachers'
    end

    def edit
        @teacher = Teacher.find(params[:id])
    end

    def update
        @teacher = Teacher.find(params[:id])

        @teacher.name = params[:name]
        @teacher.mobile = params[:mobile]
        @teacher.email = params[:email]
        @teacher.desc = params[:desc]

        @teacher.save

        redirect_to '/teachers'
    end

    def destroy
        teacher = Teacher.destroy(params[:teacher_id])
        redirect_to :back
    end

end
