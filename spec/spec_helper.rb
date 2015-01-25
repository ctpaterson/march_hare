# encoding: utf-8

$LOAD_PATH.unshift File.expand_path("../../lib", __FILE__)

require 'bundler'
Bundler.setup(:default, :test)

case RUBY_VERSION
when "1.8.7" then
  class Array
    alias sample choice
  end
end


require "march_hare"

puts "Running on Ruby #{RUBY_VERSION}."

RSpec.configure do |config|
  config.raise_errors_for_deprecations!
end
