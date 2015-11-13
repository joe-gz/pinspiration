class TagsController < ApplicationController

  def index
  end

  def show

  end

  def new
    @pin = Pin.find(params[:pin_id])
    @tag = @pin.tags.new
  end

  def create
    @pin = Pin.find(params[:pin_id])
    @board = Board.find_by(title: params[:board])
    @pin.tags.create(board_id: @board.id)
    redirect_to pin_path(@pin)
  end

  def edit
  end

  def update
  end

  def destroy
    @tag = Tag.find(params[:id])

    @board = Board.find(params[:board_id])
    @tag.destroy
    redirect_to user_board_path(current_user,@board)
  end

end
