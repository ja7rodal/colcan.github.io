namespace :db do
	desc "poulate db for colcan"
	task populate: :environment do
		#require 'as-duration'
		Client.destroy_all
		300.times do
			Client.create!(
				name:			Faker::Company.name,
  			email:    Faker::Internet.email,  
  			address:	Faker::Address.street_address,
  			phone:		Faker::Number.between(5792344, 8913456)

				)
		end
	end

end