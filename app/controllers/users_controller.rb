class UsersController < ApplicationController
    def index
  users = User.all
  render json: users
end

    def show
        user = User.find(params[:id])
        if user
        render json: user, status: :ok
        else
        render json: {error: :not_found}, status: :not_found
        end
    end
    def create
        user = User.create(user_params)
         if user.valid?
            render json: user, status: :created
        else
            render json: user.errors.messages , status: :unprocessable_entity
        end
    end
    def update
        user = User.find(params[:id])
        user.update(user_params)
        render json: user, status: :accepted
        render json: {error: "Unable to update user"}, status: :unprocess
    end
    def destroy
        user = User.find(params[:id])
        user.destroy
        head :no_content
    end


    private
    def user_params
        params.permit(:email , :username)
    end
end
