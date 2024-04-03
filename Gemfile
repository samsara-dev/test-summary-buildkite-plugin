# frozen_string_literal: true

source 'https://rubygems.org'

git_source(:github) { |repo_name| "https://github.com/#{repo_name}" }

gem 'bundler'
gem 'haml', '~> 5.2.2'

group :development, :test do
  gem 'rake'
  gem 'rspec'
  gem 'rspec_junit_formatter'
end

group :development do
  gem 'commonmarker'
end

group :test do
  gem 'simplecov', require: false
end
