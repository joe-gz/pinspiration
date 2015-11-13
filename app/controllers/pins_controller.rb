class PinsController < ApplicationController

before_action :set_pin, only: [:show,:edit,:update,:destroy]
  def index
    @pins = Pin.all
  end

  def show
    @tag = Tag.new
  end

  def new
    @pin = Pin.new
  end

  def create
    @pin = current_user.pins.create(pin_params)
    redirect_to pins_path
  end

  def edit
  end

  def update
    @pin.update(pin_params)
    redirect_to pin_path(@pin)
  end

  def destroy
    @pin.destroy
    redirect_to pins_path
  end

  private

  def pin_params
    params.require(:pin).permit(:title,:photo_url)
  end

  def set_pin
    @pin = Pin.find(params[:id])
  end
end
