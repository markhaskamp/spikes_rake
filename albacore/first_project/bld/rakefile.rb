# require 'c:/Ruby/lib/ruby/gems/1.8/gems/albacore-0.1.3/lib/albacore'
require 'albacore'

@project_home_dir = '..';
@app_dir      = sprintf("%s/%s", @project_home_dir, "app");
@test_dir     = sprintf("%s/%s", @project_home_dir, "test");
@devtools_dir = sprintf("%s/%s", @project_home_dir, "devtools");

task :default => [:msbuild, :unittests]

desc "a sample Rake rask"
task :default do
  puts "Hello from rake."
end

msbuild :msbuild do |msb|
  msb.properties :configuration => :Debug
  msb.targets :Clean, :Build
  msb.solution = "#{@app_dir}/HelloWorld/HelloWorld.sln"
end

nunit :unittests do |nunit|
  nunit.path_to_command = "#{@devtools_dir}/tdd/nunit/nunit-console.exe"
  nunit.assemblies = "#{@test_dir}/HelloWorld_Test/bin/Debug/HelloWorld_Test.dll"
end

task :run do
  sh "#{@app_dir}/HelloWorld/bin/Debug/HelloWorld.exe"
end

  

