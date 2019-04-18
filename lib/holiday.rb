require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash.each do |season, holiday|
    if season == :winter
      holiday.each do
        holiday << supply
      end
    end
    holiday_hash
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash.each do |season, holiday|
    if season == :spring
      if holiday == :memorial_day
        holiday << supply
      end
    end
    holiday_hash
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holiday|
    puts "#{season.to_s.capitalize}:"
    holiday.each do |holiday, supply|
      holi_name = holiday.to_s
      holi_words = holi_name.split(" ")
      holi_caps = holi_words.capitalize!
      holi_final = holi_caps.join(" ")
      end
    end
    puts "#{holi_final}: #{supply.join(",")}"
end

def all_holidays_with_bbq(holiday_hash)
  bbq_hol = []
  holiday_hash.each do |season, holidays|
    holidays.each do |holiday, supply|
      if supply.include? ("BBQ")
        bbq_hol << holiday
      end
    end
  end
  bbq_hol
end