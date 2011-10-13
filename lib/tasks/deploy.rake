namespace :deploy do

  desc 'Deploy app to Heroku'
  task :production => :environment do
    puts "Precompiling Assets"

    Rake::Task['assets:precompile']
    `git add .`
    `git commit -m 'Precompile Assets'`

    puts "Deploying to Heroku"
    `git push heroku master`
  end

end