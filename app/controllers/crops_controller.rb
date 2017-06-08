class CropsController < ApplicationController
  before_action :set_crop, only: [:show]

  def index
  	@crops = Crop.all
  end

  def show
  	@farms = Farm.with_crop.search_by_crop(params[:id]).order("mst_pref_id ASC")
  end

  private

  def set_crop
  	@crop = Crop.find(params[:id])
  end
end
