class DiscoveriesController < ApplicationController
  def index
    @discoveries = Discovery.order('created_at DESC')
  end
end
