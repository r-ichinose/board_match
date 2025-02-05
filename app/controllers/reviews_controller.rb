class ReviewsController < ApplicationController
  def create
    review = Review.new(review_params)
    if review.save
      redirect_to board_path(review.board_id), notice: "レビューを投稿しました！"
    else
      redirect_to board_path(review.board_id), alert: "レビューを投稿できませんでした。"
    end
  end

  private

  def review_params
    params.require(:review).permit(:board_id, :rating, :comment, :user_exp).merge(user_id: current_user.id)
  end
end
