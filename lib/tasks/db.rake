namespace :db do
  desc "Remaking data"
  task remake_data: :environment do
    Rake::Task["db:migrate:reset"].invoke

    puts "Creating words"
    100.times {FactoryGirl.create :word}
  end
end
