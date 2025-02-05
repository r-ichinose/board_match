class FavoritesController < ApplicationController
  def index
    @favorites = current_user.favorites.includes(:board)  # ユーザーのお気に入りを取得
  end

  def create
    favorite = current_user.favorites.new(board_id: params[:board_id])
    if favorite.save
      redirect_to favorites_path, notice: "お気に入りに追加しました！"
    else
      redirect_to boards_path, alert: "お気に入りに追加できませんでした。"
    end
  end

  def destroy
    favorite = current_user.favorites.find(params[:id])
    favorite.destroy
    redirect_to favorites_path, notice: "お気に入りを削除しました。"
  end
end
