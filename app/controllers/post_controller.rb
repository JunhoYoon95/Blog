class PostController < ApplicationController
    def index
        @posts = Post.all
        @author_email = current_user.email
    end

    def comment_create
        comment = Comment.new
        comment.content = params[:content]
        comment.author = current_user.email
        comment.post_id = params[:post_id]

        comment.save
        redirect_to '/admin'
    end

    def create
        post = Post.new
        post.title = params[:title]
        post.post_type = (params[:type]).to_i
        post.author = current_user.email
        post.content = params[:content]

        post.save
        redirect_to '/admin'
    end

    def edit
        @teacher = Post.find(params[:id])
    end

    def update
        @teacher = Post.find(params[:id])

        @teacher.name = params[:name]
        @teacher.mobile = params[:mobile]
        @teacher.email = params[:email]
        @teacher.desc = params[:desc]

        @teacher.save

        redirect_to '/posts'
    end

    def delete
        Teacher.find(params[:id]).destroy
        redirect_to '/posts'
    end
end
