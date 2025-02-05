class BoardsController < ApplicationController
  def index
    @boards = Board.all  # 全てのボードを取得
  end

  def show
    @board = Board.find(params[:id])  # 特定のボードを取得
  end

end
