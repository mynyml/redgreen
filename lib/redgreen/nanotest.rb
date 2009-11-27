module Nanotest
  class << self
    alias :redgreen__orig_results :results
    def results
      RedGreen.colour = :red unless @@failures.empty?
      redgreen__orig_results.strip + "\n" + RedGreen.visual + "\n\n"
    end
  end
end
