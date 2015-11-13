class BoardsController < ApplicationController

  before_action :set_board, only: [:show,:edit,:update,:destroy]
    def index
      @boards = Board.all
    end

    def show
      @pins = @board.pins
      @tag = Tag.new
    end

    def new
      @board = Board.new
    end

    def create
      @board = Board.create(board_params)
      redirect_to user_boards_path
    end

    def edit
    end

    def update
      @board.update(board_params)
      redirect_to user_board_path(@board)
    end

    def destroy
      @board.destroy
      redirect_to user_boards_path
    end

    private

    def board_params
      params.require(:board).permit(:title)
    end

    def set_board
      @board = Board.find(params[:id])
    end

end
