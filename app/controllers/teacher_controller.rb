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

    def review_create
        review = Review.new
        review.comment = params[:comment]
        review.teacher_id = params[:teacher_id].to_i
        review.user_id = current_user.id.to_i
        review.star = params[:star]

        review.save
        redirect_to '/admin'
    end

    def like_create
        like = Like.new
        like.teacher_id = params[:teacher_id].to_i
        like.user_id = current_user.id

        like.save
        redirect_to '/teachers'
    end

    def like_delete
        Like.find(params[:id]).destroy
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

    def delete
        Teacher.find(params[:id]).destroy
        redirect_to '/teachers'
    end

end
