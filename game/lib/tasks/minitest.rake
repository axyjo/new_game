require "rake/testtask"

Rake::TestTask.new(:test => "db:migrate") do |t|
  t.libs << "test"
  t.pattern = "test/**/*_test.rb"
end

task :default => :test
