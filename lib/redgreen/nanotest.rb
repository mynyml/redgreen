require 'nanotest'

at_exit do
  if NanoTest::FAILURES.empty?
    NanoTest::FAILURES << RedGreen.visual + "\n\n"
  else
    RedGreen.colour = :red 
    NanoTest::FAILURES << RedGreen.visual + "\n\n"
  end
end
