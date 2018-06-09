def get_first_name_of_season_winner(data, season)
  name = []
  data.each do |seasons, cast|
    if seasons == season
      cast.each do |person|
        if person["status"] == "Winner"
          name = person["name"].split(' ')
          name[0]
        end
      end
    end
  end
  name[0]
end

def get_contestant_name(data, occupation)
  name = []
  data.each do |seasons, cast|
    cast.each do |person|
      if person["occupation"] == occupation
        name = person["name"]
      end
    end
  end
  name
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |seasons, cast|
    cast.each do |person|
      if person["hometown"] == hometown
        count += 1
      end
    end
  end
  count
end

def get_occupation(data, hometown)
  occupation = ""
  data.each do |seasons, cast|
    cast.each do |person|
      if person["hometown"] == hometown
        occupation = person["occupation"]
        break
      end
    end
  end
  occupation
end

def get_average_age_for_season(data, season)
  num_of_contestants = 0
  total_age = 0
  data.each do |seasons, cast|
    if seasons == season
      cast.each do |person|
        num_of_contestants += 1
        total_age += person["age"].to_f
      end
    end
  end
  (total_age / num_of_contestants).round
end
