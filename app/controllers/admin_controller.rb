class AdminController < ApplicationController
$tab = "teacher"
$tabs = "teacher"
    def index
        @user_email = current_user.email
    end

    def change_tab
        $tabs = params[:tab]
    end

    def change_tab 
        $tab = params[:tab]
        puts "Changing"
        redirect_to '/admin'
        respond_to do |format|
            format.js {render "admin/index", :locals => {:tab => params[:tab]}} # actually means: if the client ask for js -> return file.js
        end
    end

    def change
        $tab = params[:tab]
        puts "Changing"
        redirect_to '/admin'
        # respond_to do |format|
        #     format.js {render "admin/index", :locals => {:tab => params[:tab]}} # actually means: if the client ask for js -> return file.js
        # end
    end

    def dmddo
        puts "dddd"
        $tabs = params[:tab]
        render :template => "layouts/posts"
    end
end
