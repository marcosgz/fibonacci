# frozen_string_literal: true

require 'bundler/inline'

gemfile do
  source 'https://rubygems.org'

  gem 'stackprof'
  gem 'flamegraph'
end

require_relative './fibonacci'

FileUtils.mkdir_p('./dist')
Flamegraph.generate('./dist/index.html') do
  puts Fibonacci.fib(30)
end
