class IdeaMasherController < ApplicationController
  def show
    @response = IdeaMasher.sitcoms.sample(1).first
    @meets = IdeaMasher.other_tv.sample(1).first
    @location = IdeaMasher.locations.sample(1).first
    @alternate = IdeaMasher.alternate_realities.sample(1).first
  end

  def sitcom
    sitcoms = IdeaMasher.sitcoms.sample(3)
    @first = sitcoms.first
    @second = sitcoms[1]
    @third = sitcoms[2]
  end
end
