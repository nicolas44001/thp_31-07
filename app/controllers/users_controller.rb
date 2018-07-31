class UsersController < ApplicationController
    def new
        @post = User.new
    end
    def create
        puts params
        @post = User.new
        @post.username= params[:username].capitalize
        @post.bio=params[:bio]
        @post.save
        # redirect_to "/users/#{@post.username}"

        if @post.invalid?

          redirect_to "/error"
        else
          redirect_to "/users/#{@post.username}"
        end

    end

    def show

    end

end
