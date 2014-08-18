namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    User.create!(name: "Example User",
                 email: "email@fakemail.org",
                 password: "foobar",
                 password_confirmation: "foobar",
                 admin: true)
    99.times do |n|
      name = Faker::Name.name
      email = "email-#{n+1}@fakemail.org"
      password = "password"
      User.create!(name: name,
                   email: email,
                   password: password,
                   password_confirmation: password)
    end
  end
end