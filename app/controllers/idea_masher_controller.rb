class IdeaMasherController < ApplicationController
  def show
    @response = IdeaMasher.sitcoms.sample(1).first + " " + IdeaMasher.books.sample(1).first
  end
end
