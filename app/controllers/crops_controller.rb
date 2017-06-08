class CropsController < ApplicationController
  before_action :set_crop, only: [:show]

  def index
  	@crops = Crop.all
  end

  def show
  	@farms = Farm.with_crop.search_by_crop(params[:id]).order("mst_pref_id ASC")
    @crop_types = CropType.all
    @mst_prefs = MstPref.all

    if params[:crop_type_id].present?
      @farms = @farms.with_crop_type.search_by_crop_type(params[:crop_type_id])
    end
  end

  private

  def set_crop
  	@crop = Crop.find(params[:id])
  end
end
