class PostController < ApplicationController
    def index
        @posts = Post.all
        @author_email = current_user.email
    end

    def create
        post = Post.new

        post.content = params[:content]
        post.type = params[:type]
        post.title = params[:titlel]
        post.author = params[:author]

        post.save
        redirect_to '/admin'
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
