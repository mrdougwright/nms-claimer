class DiscoveriesController < ApplicationController
  def index
    @discoveries = Discovery.order('created_at DESC')
  end

  def new
    @discovery = Discovery.new
  end

  def create
    json_saved ClaimDiscovery.find_or_create(params[:discovery])
  end
end
