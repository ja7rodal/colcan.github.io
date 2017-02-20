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
	
	task receipt: :environment do
		#require 'as-duration'
		Receipt.destroy_all
		300.times do
			Receipt.create!(
				client_id:		Faker::Number.between(15, 200),
  			amount:    		Faker::Number.between(0, 200)*1000,
  			temperature:	Faker::Number.between(0, 40),
  			user_id:		3
				)
		end
	end

	
end