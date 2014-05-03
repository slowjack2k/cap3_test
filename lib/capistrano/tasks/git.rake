require 'capistrano/git'
require 'pp'

pp Rake::Task['git:wrapper'].actions.inspect


Rake::Task['git:wrapper'].clear_actions

Rake::Task['git:wrapper'].enhance do
  puts "I'm in custom git:wrapper"
  pp Rake::Task['git:wrapper'].actions.inspect
  puts "\n"*5
end
