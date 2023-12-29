class UserController < ApplicationController
    def signin
        
        #order("created_on DESC"
        @user = Post.where(["email = ?",params[:email]]).where(["password=?",params[:pw]]).last
        if @user
            session[:uid] = @user.id
        redirect_to controller: :post, action: :show
        
    else
        redirect_to controller: :post, action: :index 
    end

    end


    def profile


    end

    def view

        @id = params[:id]
        @user = Post.where(["id=?",@id]).last
    end

end
