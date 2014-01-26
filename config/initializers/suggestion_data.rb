data_dir = File.join(Rails.root, 'app/data')

data = {}

Dir.glob("#{data_dir}/**/*.txt").each do |path|
  data_path = path.gsub(data_dir, '')
  
  resource, data_name = /^\/(.+)\/(.+)\.txt$/.match(data_path).captures.map(&:to_sym)

  suggestions = IO::readlines(path).map {|x| x.gsub(/\n/,'') }

  data[resource] ||= {}
  data[resource][data_name] = suggestions
end

SUGGESTION_DATA = data

p SUGGESTION_DATA
