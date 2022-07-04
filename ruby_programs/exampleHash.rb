require 'pp'

exampleHash = {
    "Google" => {
      password: "123456",
      date_added: "Mon Jun 02 12:02:39 -0700 2008",
      date_updated: "Mon Jun 02 12:02:39 -0700 2008"  },
    "Twitter" => {
      password: "123dafsdf456!",
      date_added: "Mon Jun 02 12:02:39 -0700 2008",
      date_updated: "Mon Jun 02 12:02:39 -0700 2008"  }
    }


exampleHash.each do |service, value|
  value.each do |service_key, service_value|
    if service_value == ("123456!")
      return false && break
    else
      break
    end
  end
end
