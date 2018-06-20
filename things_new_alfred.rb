input_arr = "{query}".split("/")

system('open', "things:///add?title=#{input_arr[0]}&when=#{input_arr[1]}&list=#{input_arr[2]}")

print input_arr[0]




#------------------------------------------------------------------
# or if you want the URI encoded version


# require 'uri'
# 
# input_arr = "{query}".chomp.split("/")
# 
# querystring = URI.encode_www_form({
#   "title" => input_arr[0], 
#   "when" => input_arr[1],
#   "list" => input_arr[2],
# })
# 
# system('open', URI.encode("things:///add?#{querystring}").gsub!('+','%20'))