class ExplorersController < ApplicationController
  def index
    @explorers = Explorer.order('created_at DESC')
  end

  # not using this action... i think
  def new
    @explorer = Explorer.new
  end

  def create
    json_saved CreateExplorer.find_or_create(params[:explorer])
  end

  def show
    @explorer = Explorer.find(params[:id])
  end

end
