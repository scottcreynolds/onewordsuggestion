class SandinoController < ApplicationController
  def index
    @suggestion = Suggestion.sandino.split(',').sample(1).first
  end
end
