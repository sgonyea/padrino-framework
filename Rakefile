require "rake/clean"
require "rake/gempackagetask"
require 'fileutils'
include FileUtils

ROOT = File.dirname(__FILE__)

padrino_gems = [
  "padrino-core",
  "padrino-cache",
  "padrino-admin",
  "padrino-gen",
  "padrino-helpers",
  "padrino-mailer",
  "padrino-routing",
  "padrino"
]
 
def rake_command(command)
  sh "#{Gem.ruby} -S rake #{command}"
end

%w(clean install gemspec build release).each do |task_name|
  desc "Run #{task_name} for all projects"
  task task_name do
    padrino_gems.each do |dir|
      Dir.chdir(dir) { rake_command(task_name) }
    end
  end
end

desc "Release all padrino gems"
task :publish do
  padrino_gems.each do |dir|
    Dir.chdir(dir) { rake_command("gemcutter:release") }
  end
end

desc "Run tests for all padrino stack gems"
task :test do
  # Omit the padrino metagem since no tests there
  padrino_gems[0..-2].each do |gem_info|
    Dir.chdir(File.join(ROOT, gem_info)) { rake_command "test" }
  end
end

require 'rake/testtask'
Rake::TestTask.new(:test_alt) do |test|
  test.libs << 'lib' << 'test'
  test.pattern = 'padrino-*/test/**/test_*.rb'
  test.verbose = true
end
