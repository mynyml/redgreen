unless RUBY_VERSION >= '1.9'

require 'expectations'
require 'lib/redgreen'

Expectations do
  expect "THIS TEST SHOULD PASS" do
    "THIS TEST SHOULD PASS"
  end
end

end
