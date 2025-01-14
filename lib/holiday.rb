require 'pry'

holiday_hash = {
    :winter => {
      :christmas => ["Lights", "Wreath"],
      :new_years => ["Party Hats"]
    },
    :summer => {
      :fourth_of_july => ["Fireworks", "BBQ"]
    },
    :fall => {
      :thanksgiving => ["Turkey"]
    },
    :spring => {
      :memorial_day => ["BBQ"]
    }
  }
def second_supply_for_fourth_of_july(holiday_hash)
    holiday_hash[:summer][:fourth_of_july][1]
  # given that holiday_hash looks like this:
  # 
  # return the second element in the 4th of July array
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter][:christmas] << supply
  holiday_hash[:winter][:new_years] << supply
  
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays

end


def add_supply_to_memorial_day(holiday_hash, supply)
    holiday_hash[:spring][:memorial_day] << supply
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  
  holiday_hash[:winter].values.flatten  
  # return an array of all of the supplies that are used in the winter season
    
end

 all_winter_holiday_supplies(holiday_hash)

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |key, val|
   puts "#{key.capitalize}:"
    val.each do |key, val|
      holiday_array = key.to_s.split("_")
      holiday_name = []
      holiday_array.collect do |word|
        holiday_name << word.capitalize
      end  
    puts "  #{holiday_name.join(" ")}: #{val.join(", ")}"

    end
  end
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.

end

all_supplies_in_holidays(holiday_hash)

def all_holidays_with_bbq(holiday_hash)
  res = []
  holiday_hash.each do |key, val|
    val.each do |key, val|
        if val.include? "BBQ"
        res << key
        end
    end
  end
  res
end






