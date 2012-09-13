class SuggestionsController < ApplicationController
  def index
    @suggestion = Suggestion.all.sample(1).first
  end
end
