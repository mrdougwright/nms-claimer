class ExplorersController < ApplicationController
  def index
    @explorers = Explorer.order('created_at DESC')
  end
end
