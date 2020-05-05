class FacilitiesController < ApplicationController
  def index
    @all_adress = Facility.all
  end

  def new
    @facility = Facility.new
  end
  
  def create
    @facility = Facility.new(facility_params)
    if @facility.save
      redirect_to facilities_path, notice: t("page.facilities.flash.create.notice")
    else
      flash.now[:alart] = t("page.facilities.flash.create.alert")
      render new_facility_path(@facility)
    end
  end

private
  def facility_params
    params.require(:facility).permit(:name, :postal_code, :prefecture, :adress1, :adress2, :building, :tel, :fax, :url, :descrioption)
  end
end
