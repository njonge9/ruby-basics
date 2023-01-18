# Getting the current Date and Time
time1 = Time.now
puts "Current Time: " + time1.inspect

# Getting components of a Date and Time
time = Time.new

puts "Current Year: #{time.year }"    # year
puts "Current Month: #{time.month}"    # month
puts "Current Day: #{time.day}"      # day
puts "Current Day of Week: #{time.wday}"     # day of week
puts "Current Day of Year: #{time.yday}"     # day of year(365)
puts "Current Hour: #{time.hour}"      # hour
puts "Current Minutes: #{time.min}"      # Minutes
puts "Current Seconds: #{time.sec}"     #seconds
puts "Current MicroSeconds: #{time.usec}"     #microseconds
puts "Current TimeZone: #{time.zone}"     #UTC: timezone name

# Time.utc, Time.gm,Time.local functions
# used to fgormat date in standard format
puts Time.local(2023, 1, 7)
puts Time.local(2023, 1, 7, 15, 24)
puts Time.gm(2023, 1, 7, 15, 24, 11)

# To get all the three above
time = Time.new
values = time.to_a
p values

# The array produced above could be used to get different date formats
puts Time.utc(*values)

# Returns number of seconds since epoch
time = Time.now.to_i
p time
# Convert number of seconds into Time object
puts Time.at(time)
# Return second since epoch which includes microseconds
time = Time.now.to_f
p time

# TimeZones and adaylight savings Time
time = Time.new

p time.zone #Returns the timezone
p time.utc_offset #0: UTC is 0 seconds offset from UTC
p time.isdst #false

# Formatting dates and time
time = Time.new

p time.to_s
p time.ctime
p time.localtime
p time.strftime("%Y-%m-%d %H:%M:%S")

# Time Arithmetic
now = Time.now
puts now

past = now - 10
puts past

future = now + 10
p future

diff = future - past
p diff

