require 'capistrano/git'
require 'pp'

pp "Bevor clear"
pp Rake::Task['git:wrapper'].actions.inspect


Rake::Task['git:wrapper'].clear_actions

pp "After clear"
pp Rake::Task['git:wrapper'].actions.inspect

Rake::Task['git:wrapper'].enhance do
  puts "Inside Task"
  pp Rake::Task['git:wrapper'].actions.inspect
  puts "\n"*5
end
