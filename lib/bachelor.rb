require 'pry'

def get_first_name_of_season_winner(data, season)
	winner = ''
	data[season].select do |contestant|
		if contestant["status"] == "Winner"
			winner = contestant["name"]
		end
	end
	winner.split[0]
end

def get_contestant_name(data, occupation)
	data.each do |season, contestants|
		contestants.each do |contestant|
			if contestant['occupation'] === occupation
				return contestant['name']
			end
		end
	end
end

def count_contestants_by_hometown(data, hometown)
	hometown_count = 0
	data.each do |season, contestants|
		contestants.each do |contestant|
			if contestant['hometown'] === hometown
				hometown_count += 1
			end
		end
	end
	hometown_count
end

def get_occupation(data, hometown)
	data.each do |season, contestants|
		contestants.each do |contestant|
			if contestant['hometown'] === hometown
				return contestant['occupation']
			end
		end
	end
end

def get_average_age_for_season(data, season)
	age_total = 0
	contestant_count = 0
	data[season].each do |contestant|
		age_total += (contestant['age'].to_f)
		contestant_count += 1
	end
	avg_age = (age_total / contestant_count).round
end
