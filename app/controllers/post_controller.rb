class PostController < ApplicationController

    def list
    end
    
    def show
      @id = session[:uid]
      @user = Post.where(["id=?",@id]).last

    end
    def index
        @books = Post.all
    end
    def new
    end
    
    def create

          @user = Post.where(["email = ?",params[:email]]).where(["password=?",params[:pw]]).last
          if @user
          redirect_to controller: :post, action: :register
          
      else
        @book = Post.new()
        @book.email = params[:email]
        @book.password = params[:pw]
        @book.save()

        
        redirect_to controller: :post, action: :index 
      end

    end


    def update

        @user = Post.where(["id = ?",session[:uid]]).last
        if @user
            @user.avatar = params[:avatar]
            @user.topimage = params[:topimage1]
            @user.emailnotifications = params[:emailnotifications]
            @user.website = params[:developer_website1]
            @user.github = params[:developer_github1]
            @user.linkedin = params[:developer_linkedin1]
            @user.stackoverflow = params[:developer_stack_overflow1]
      


            @user.save()
      #  redirect_to controller: :post, action: :register
        
 
    end

  end



    def signin

    end


    def register
    end
    
    def book_params
        params.require(:posts).permit(:title,  :description)
    end
    
    def edit
    end

    
    def delete
    end

end


