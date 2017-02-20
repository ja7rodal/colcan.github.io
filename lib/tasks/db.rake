namespace :db do
	desc "poulate db for colcan"
	task populate: :environment do
		#require 'as-duration'
		#Client.destroy_all
		300.times do
			Client.create!(
				name:			Faker::Company.name,
  			email:    Faker::Internet.email,  
  			address:	Faker::Address.street_address,
  			phone:		Faker::PhoneNumber.phone_number

				)
		end
	end

end