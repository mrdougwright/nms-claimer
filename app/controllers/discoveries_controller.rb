class DiscoveriesController < ApplicationController
  before_filter :authenticate_explorer!, except: [:index, :claim]

  def index
    @discoveries = Discovery.order('created_at DESC')
  end

  def new
    @discovery = Discovery.new
  end

  def create
    json_saved ClaimDiscovery.create(params[:discovery])
  end
end
