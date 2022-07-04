 require 'pp'
 
 




 originalHash = {
  "Google" => {
    password: "123456",
    date_added: "Mon Jun 02 12:45:39 -0700 2008",
    date_updated: "Mon Jun 02 12:02:39 -0700 2008"  },
  "Twitter" => {
    password: "123dafsdf456!",
    date_added: "Mon Jun 05 12:10:39 -0700 2008",
    date_updated: "Mon Jun 02 12:20:39 -0700 2008"  }
  }

# sort_by  ~ sorts by service name or date added
# args ~ 
# 'service'
# 'service', 'reverse'
# 'added_on'
# 'added_on', 'reverse'

def sort_by(*args)
  exampleHash = {
    "Google" => {
      password: "123456",
      date_added: "Mon Jun 04 12:02:39 -0700 2008",
      date_updated: "Mon Jun 02 12:02:39 -0700 2008"  },
    "Twitter" => {
      password: "123dafsdf456!",
      date_added: "Mon Jun 01 12:10:39 -0700 2008",
      date_updated: "Mon Jun 02 12:20:39 -0700 2008"  }
    }

  sortedHash = Hash.new

  if(args[0] == "service" && args.length == 1)
    return sortedHash = exampleHash.keys.sort
  elsif(args[0] == "service" && args[1] == "reverse")
    return sortedHash = exampleHash.keys.sort.reverse
  elsif(args[0] == "added_on" && args.length == 1)
    sortedHash = exampleHash.sort_by{ |_, service| service[:date_added]}.to_h
    return sortedHash.keys
  elsif(args[0] == "added_on" && args[1] == "reverse")
    return "a sorted aasdfklajsdf"
  end
end


pp sort_by("added_on")



#pp originalHash.sort_by{ |_, service| service[:date_added]}