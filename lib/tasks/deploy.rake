namespace :deploy do

  desc 'Deploy app to Heroku'
  task :production do
    puts "Precompiling Assets"
    Rake::Task['assets:precompile'].invoke(:RAILS_ENV => 'production', :RAILS_GROUPS => 'assets')
    `git add .`
    `git commit -m 'Precompile Assets'`

    puts "Deploying to Heroku"
    `git push heroku master`
  end

end