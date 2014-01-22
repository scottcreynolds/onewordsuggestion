class SuggestionsController < ApplicationController
  def index
    @suggestion = Suggestion.all.sample(1).first
  end

  def generator
    @adjectives = Character.adjectives.sample(2)
    @noun = Character.nouns.sample(1).first
    @profession = Character.professions.sample(1).first
  end

  def blob
    @suggestion = Suggestion.all.shuffle.sample(17).join(" ")
    render action: :index
  end
end
