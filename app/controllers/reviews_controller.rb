class ReviewsController < ApplicationController
    def index
        reviews = Review.all.includes(:user, :restaurant)
        render json: reviews.as_json(include: { 
  user: {only: [:email, :username]},
  restaurant: {only: [:name, :address, :cuisine]}
})
    end
    def show
        review =Review.find(params[:id])
        if review
        render json: reviews, status: :ok
        else
            render json:{error:"Invalid review"},status: :not_found
        end
    end
    def create
        review = Review.create(review_params)
        if review.valid?
            render json: review, status: :created
        else
            render json: {error: "Unable to create review"}, status: :unprocessable_entity
        end
    end
    def update
        review = Review.find(params[:id])
        if review
        review.update(review_params)
        render json: review, status: :accepted
        else
        render json: {error: "Review update failed"}, status: :unprocess
        end
    end
    def destroy
        review = Review.find(params[:id])
        if review
            review.destroy
            head :no_content
        else
            render json:{error:"No such review found"}, status: :unprocess
        end
    end


    private
    def reviews_params
        params.permit(:rating, :comment, :restaurant_id, :user_id)
    end
end
