namespace :scm do
  task :hook do
     load File.expand_path("git.rb", __dir__) 
  end 
end

Capistrano::DSL.stages.each do |stage|
  after stage, 'scm:hook'
end

