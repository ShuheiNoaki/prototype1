class CropsController < ApplicationController
  before_action :set_crop, only: [:show]

  def index
  	@crops = Crop.all
  end

  def show

  	@farms = Farm.with_crop.search_by_crop(params[:id]).order("mst_pref_id ASC")
    @crop_types = CropType.where(crop_id: params[:id])
    @mst_prefs = MstPref.all

    #scope使えていない
    if params[:crop_type_id].present?
      @farms = @farms.includes(:crop_types).where(crop_types: {id: params[:crop_type_id]})
    end

    if params[:mst_pref_id].present?
      @farms = @farms.search_by_pref(params[:mst_pref_id])
    end

    if params[:min_area]&&params[:max_area].present?
      @farms = @farms.where("area >= ? AND area <= ?", params[:min_area], params[:max_area])
    end
  end

  private

  def set_crop
  	@crop = Crop.find(params[:id])
  end
end
