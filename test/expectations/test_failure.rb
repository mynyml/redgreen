require 'pathname'
require 'expectations'
root  =  Pathname(__FILE__).dirname.parent.parent
require  root + 'lib/redgreen'

Expectations do
  expect "THIS TEST SHOULD FAIL" do
    true
  end
end
