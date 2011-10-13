namespace :deploy do

  desc 'Deploy app to Heroku'
  task :production => :environment do
    # precompile assets
    Rake::Task['assets:precompile']
    # commit
    `git add .`
    `git commit -m 'Precompile Assets'`
    # push to heroku
    `git push heroku master`
  end
  
end