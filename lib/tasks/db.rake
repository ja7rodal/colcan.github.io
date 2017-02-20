namespace :db do
	desc "poulate db for colcan"
	task client: :environment do
		#require 'as-duration'
		Client.destroy_all
		100.times do
			Client.create!(
				name:			Faker::Company.name,
				email:    Faker::Internet.email,  
				address:	Faker::Address.street_address,
				phone:		Faker::Number.between(5792344, 8913456),
				route_id: Faker::Number.between(1, 5)
				)
		end
	end

	task receipt: :environment do
		#require 'as-duration'
		Receipt.destroy_all
		30.times do
			Receipt.create!(
				client_id:		Faker::Number.between(1, 100),
				amount:    		Faker::Number.between(0, 200)*1000,
				temperature:	Faker::Number.between(0, 25),
				user_id:			Faker::Number.between(5, 7)
				)
		end
	end

	task sample: :environment do
		#require 'as-duration'
		Sample.destroy_all
		66.times do
			Sample.create!(
				sample:				Faker::Number.between(0,3),
				quantity:    	Faker::Number.between(1, 20),
				receipt_id:		Faker::Number.between(1, 30)
				)
		end
	end
end