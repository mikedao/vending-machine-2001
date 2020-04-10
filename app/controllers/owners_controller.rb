class OwnersController < ApplicationController
  def index
    @owners = Owner.all
  end
end
