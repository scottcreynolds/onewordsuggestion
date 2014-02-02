class WarriorvController < ApplicationController
  def index
    @suggestion = Suggestion.warriorv.sample(1).first
  end
end
