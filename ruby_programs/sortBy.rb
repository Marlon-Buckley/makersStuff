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


class PasswordManager2

  def initialize(hsh)
    @hsh = hsh
  end

  def sort_by(*sort_by_x)
    return sort_by_x == 'services'
  end

  def services
    @hsh.keys
  end

end

pwm = PasswordManager2.new(exampleHash)

pwm.sort_by('services')
