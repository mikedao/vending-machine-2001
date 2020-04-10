class SnacksController < ApplicationController

  def show
    @snack = Snack.find(params[:id])
  end
end
