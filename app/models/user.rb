class User < ApplicationRecord
	require 'csv'
	has_many :microposts
	validates :name, presence: true
	validates :email, presence: true 

	def self.tao_moi
		User.create(name: "Hung", email: "hung@gmail.com")
		User.create(name: "Hung2", email: "hung2@gmail.com")
	end

	def self.readCSV(filename="file.csv")	
		csv_text = File.read(filename)
		csv = CSV.parse(csv_text, :headers => true)
		csv.each do |row|
			user_hash=row.to_hash
			user=User.find_by(email: user_hash["email"])
			if user==nil 
				User.create!(row.to_hash) 
			end
		end
	end 
end
