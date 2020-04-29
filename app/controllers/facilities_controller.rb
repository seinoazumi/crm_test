class FacilitiesController < ApplicationController
  def index
    @all_adress = Facility.all
  end
end
