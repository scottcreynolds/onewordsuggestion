class Suggestion < TextModel
  def self.all
    @all ||= self.get_suggestions(:pop_culture, :warriorv, :sandino, :abras_army, :random, :nouns)
  end

  def self.pop_culture
    @pop_culture ||= self.get_suggestions(:movies, :books)
  end

  def self.get_suggestions(*args)
    results = args.reduce([]){|x,y| x + Suggestion.send(y) }
  end
end
