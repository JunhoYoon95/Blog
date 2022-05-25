class TeacherController < ApplicationController
    def index
        @teachers = Teacher.all
        @message = "Hi"
    end
end
