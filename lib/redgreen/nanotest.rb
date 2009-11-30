module Nanotest
  class << self
    alias :redgreen__orig_results :results
    def results
      RedGreen.colour = (@@failures.empty?) ? :green : :red
      redgreen__orig_results.strip + "\n" + RedGreen.visual + "\n\n"
    end
  end
end
