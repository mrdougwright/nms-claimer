class DiscoveriesController < ApplicationController
  before_filter :authenticate_explorer!, except: [:index, :claim]

  def index
    @discoveries = Discovery.order('created_at DESC')
  end

  def new
    @discovery = Discovery.new
  end

  def create
    @discovery = Discovery.new(discovery_params)
    if @discovery.save
      redirect_to action: 'index'
    else
      render "new"
    end
  end

private

  def discovery_params
    params.require(:discovery).permit(:name, :explorer_id)
  end
end
