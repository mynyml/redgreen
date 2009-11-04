unless RUBY_VERSION >= '1.9'

require 'expectations'
require 'lib/redgreen'

Expectations do
  expect "THIS TEST SHOULD FAIL" do
    true
  end
end

end
