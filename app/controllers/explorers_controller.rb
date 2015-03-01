class ExplorersController < ApplicationController
  def index
    @explorers = Explorer.order('created_at DESC')
  end

  def new
    @explorer = Explorer.new
  end

  def create
    json_saved CreateExplorer.find_or_create(params[:explorer])
  end
end
