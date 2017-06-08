class MstPrefsController < ApplicationController
  before_action :set_mst_pref, only: [:show]

  def index
  	@mst_prefs = MstPref.all
  end

  def show
  	@farms = Farm.search_by_pref(params[:id]).order("mst_pref_id ASC")
  end

  private

  def set_mst_pref
  @mst_pref = MstPref.find(params[:id])
  end
end
