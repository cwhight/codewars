def format_duration(seconds)
  #your code here
  return "now" if seconds == 0
  hash = {
    years: seconds / (365 * 24 * 3600),
    days: seconds / (24 * 3600) % 365,
    hours: seconds / 3600 % 24,
    minutes: seconds / 60 % 60,
    seconds: seconds % 60
  }
  solution = []
  hash.each do |key, value|
    if value > 0
      value == 1 ? solution << "#{value} #{key.to_s.chop}" : solution << "#{value} #{key}"
    end
  end
  solution.join(", ").reverse.sub(",", "dna ").reverse
end
