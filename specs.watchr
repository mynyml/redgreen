# Run me with:
#
#   $ watchr specs.watchr

# --------------------------------------------------
# Watchr Rules
# --------------------------------------------------
watch( '^test.*/test_.*\.rb'        )   { |m| system "ruby -rubygems -I.:lib %s" % m[0]                       }
watch( '^lib/redgreen/(.*)\.rb'     )   { |m| system "rake -s test:by_fw FW=%s"  % m[1]                       }
watch( '^lib/redgreen/testunit\.rb' )   { |m| system "rake -s test:by_fw FW=testunit,shoulda,context,contest" }
watch( '^lib/redgreen\.rb'          )   { |m| system "rake -s test:all"                                       }
watch( '^test/test_helper\.rb'      )   { |m| system "rake -s test:all"                                       }

# --------------------------------------------------
# Signal Handling
# --------------------------------------------------
# Ctrl-\
Signal.trap('QUIT') do
  puts " --- Running all tests ---\n\n"
  system "rake -s test:all"
end

# Ctrl-C
Signal.trap('INT') { abort("\n") }

