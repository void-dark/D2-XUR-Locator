require 'open-uri'
require 'nokogiri'
index = true
putx1 = " .----------------.  .----------------.  .----------------.  .----------------. "
putx2 = " | .--------------. || .--------------. || .--------------. || .--------------. | "
putx3 = " | |  _______     | || | _____  _____ | || |   ______     | || |  ____  ____  | | "
putx4 = " | | |_   __ \\    | || ||_   _||_   _|| || |  |_   _ \\    | || | |_  _||_  _| | | " 
putx5 = " | |   | |__) |   | || |  | |    | |  | || |    | |_) |   | || |   \\ \\  / /   | | "
putx6 = " | |   |  __ /    | || |  | '    ' |  | || |    |  __'.   | || |    \\ \\/ /    | | "
putx7 = " | |  _| |  \\ \\_  | || |   \\ `--' /   | || |   _| |__) |  | || |    _|  |_    | | "
putx8 = " | | |____| |___| | || |    `.__.'    | || |  |_______/   | || |   |______|   | | " 
putx9 = " | |              | || |              | || |              | || |              | | "
putx10 = " | '--------------' || '--------------' || '--------------' || '--------------' | "
putx11 = " '----------------'  '----------------'  '----------------'  '----------------'   "

time = Time.new



cur_date = 1

puts putx1.encode('utf-8')
puts putx2.encode('utf-8')
puts putx3.encode('utf-8')
puts putx4.encode('utf-8')
puts putx5.encode('utf-8')
puts putx6.encode('utf-8')
puts putx7.encode('utf-8')
puts putx8.encode('utf-8')
puts putx9.encode('utf-8')
puts putx10.encode('utf-8')
puts putx11.encode('utf-8')
puts " "
puts " "
puts " "
puts " "

puts "1.) Today's Date"
puts "2.) Xur General Locations"
puts "3.) Xur Specific Location"
puts "4.) Xur Items for sale"
puts "5.) Quit"

while index == true
  puts " "
  puts "Pick selection: "
  name = gets.chomp
  opt = name.to_i
  if opt == 1 then
    puts " "
    puts " "
    puts "------------------------------------------------------------------------------------------------ "
    puts "Today's Date"
    puts " "
    puts time.strftime("%m/%d/%Y")
    puts time.strftime("%I:%M %p")
    puts time.strftime("Today is %A")
  elsif opt == 2 then
    html = URI.open("https://whereisxur.com/")
    #EDZ_response = Nokogiri::HTML(open(html))
    #IO_response = Nokogiri::HTML(html)
    #EDZ = EDZ_response.css('a')[6]
    #IOl = EDZ_response.css('a')[7]
    #Nessus = EDZ_response.css('a')[8]
    #Titan = EDZ_response.css('a')[9]
    #The_Tower = EDZ_response.css('a')[10]
    puts " "
    puts " "
    puts "------------------------------------------------------------------------------------------------ "
    puts "---Xur General Locations---"
    puts " "
    # puts EDZ
    puts "EDZ: Winding Cove"
    puts " "
    puts "Nessus: Watchers Grave"
    puts " "
    puts "The Tower: Hanger"
  
  elsif opt == 3 then
    puts " "
    puts " "
    puts "------------------------------------------------------------------------------------------------ "
    puts "Xur Specific Locations "
    puts " "
    html2 = URI.open("https://whereisxur.com")
    time = Nokogiri::HTML(open(html2))
    puts time.css('h4')[0]
    puts " "
    puts time.css('p')[0]
  elsif opt == 4 then
    puts " "
    puts " "
    puts "------------------------------------------------------------------------------------------------ "
    puts "Xur items for sale "
    puts " "
    html3 = URI.open("https://whereisxur.com")
    time2 = Nokogiri::HTML(open(html3))
    puts "---Exotic Weapon this week---"
    puts time2.css('span')[6]
    puts time2.css('p')[11]
    puts " "
    puts "---Hunter Armor Piece---"
    puts time2.css('span')[8]
    puts time2.css('p')[12]
    puts " "
    puts "---Titan Armor Piece---"
    puts time2.css('span')[10]
    puts time2.css('p')[13]
    puts " "
    puts "---Warlock Armor Piece---"
    puts time2.css('span')[12]
    puts time2.css('p')[14]
  
  
  elsif opt == 5 then
    index = false
  

  
  
  
  end
 end 

