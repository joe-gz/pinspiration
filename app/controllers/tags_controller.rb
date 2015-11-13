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

end
