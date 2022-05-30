class AdminController < ApplicationController
$tab = "teacher"
    def index
        @user_email = current_user.email
    end

    def change
        puts "Changing"
        $tab = params[:tab]
        redirect_to '/admin'
    end

    def dmddo
        puts "dddd"
        $tab = "teacher"
    end
end
