class ExplorersController < ApplicationController
  def index
    @explorers = Explorer.order('created_at DESC')
  end

  def show
    @explorer = Explorer.find(params[:id])
  end
end
