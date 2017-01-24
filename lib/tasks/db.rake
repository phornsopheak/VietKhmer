namespace :db do
  desc "Remaking data"
  task remake_data: :environment do
    Rake::Task["db:migrate:reset"].invoke

    puts "Creating words"
    100.times {FactoryGirl.create :word}

    puts "Creating idiom words"
    10.times {FactoryGirl.create :word, isIdiom: true}

    puts "Creating technical words"
    10.times {FactoryGirl.create :word, isTechnical: true}

    puts "Creating technical and idiom words"
    10.times {FactoryGirl.create :word, isTechnical: true, isIdiom: true}

    puts "Creating article"
    10.times {FactoryGirl.create :article}
  end
end
