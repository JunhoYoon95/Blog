class AdminController < ApplicationController
    def index
        @posts = Post.all
        @user_email = current_user.email
    end
end
