class FishFamiliesController < ApplicationController

  def index
    @fish_families = FishFamily.all
  end

end
