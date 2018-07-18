#!/usr/bin/env ruby

$:.unshift File.join(__FILE__, '..', '..', 'lib')

base_prices_file = ARGV[0]
cart_file = ARGV[1]

if base_prices_file.nil? || cart_file.nil?
  puts "Usage: #{__FILE__} /path/to/base_prices/file /path/to/cart/file"
  exit 2
end

require 'application'

Application.new(base_prices_file, cart_file).cli