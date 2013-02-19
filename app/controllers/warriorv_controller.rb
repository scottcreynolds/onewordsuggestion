class WarriorvController < ApplicationController
  def index
    @suggestion = Suggestion.warriorv.split(',').sample(1).first
  end
end
