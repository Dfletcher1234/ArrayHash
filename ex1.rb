require "Date"
zodiac = {
  "Aries" => {start_dob: "March 21", end_dob: "April 19" },
  "Taurus" => {start_dob: "April 20", end_dob: "May 20"},
  "Gemimi" => {start_dob: "May 21", end_dob: "June 20"},
  "Cancer" => {start_dob: "June 21", end_dob: "July 22"},
  "Leo" => {start_dob: "July 23", end_dob:"August 22"},
  "Virgo" => {start_dob: "August 23", end_dob: "September 22"},
  "Libra" => {start_dob: "September 23", end_dob: "October 22"},
  "Scorpio" => {start_dob: "October 23", end_dob: "November 21"},
  "Sagittarius" => {start_dob: "November 22", end_dob: "December 21"},
  "Capricorn" => {start_dob: "December 22", end_dob: "January 19"},
  "Aquarius" => {start_dob: "January 20", end_dob: "February 18"},
  "Pisces" => {start_dob: "February 19", end_dob: "March 20"},

}

puts "please enter your the day of your birth?"
day = gets.chomp.to_i

puts "Please enter the month of your birth"
month = gets.chomp

dob = DateTime.parse ("#{month} #{day}")

sign = zodiac.find do |_zodiac, attributes|

proper_start_dob = DateTime.parse(attributes[:start_dob])

 proper_end_dob = DateTime.parse(attributes[:end_dob])

 dob >= proper_start_dob && dob <= proper_end_dob

end

puts sign.first
