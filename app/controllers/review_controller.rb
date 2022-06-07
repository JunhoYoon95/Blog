class ReviewController < ApplicationController
    def index
        @reviews = Review.where(teacher_id: params[:teacher_id])
        @teacher_id = params[:teacher_id]
    end
    def new
    end
    def review_create
        review = Review.new
        review.comment = params[:comment]
        review.star = params[:star_rate].to_i
        review.teacher_id = params[:teacher_id].to_i
        review.user_id = current_user.id.to_i
        review.save
        redirect_to '/teachers'
    end
end
