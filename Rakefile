#!/usr/bin/env rake
require "bundler/gem_tasks"
require 'rake/testtask'

Rake::TestTask.new do |t|
  t.libs = ["test"]
  t.pattern = "test/**/*_test.rb"
  t.ruby_opts = ['-w']
end

task :default => :test

namespace :test do
  desc "Run Tests"
  task :all do
    sh "bundle exec rake -t test"
  end
end

