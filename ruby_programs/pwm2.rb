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

    def initialize
        @passwordHash = Hash.new
        @spesh_chars = [ "!", "@", "$", "%", "&" ]
      end
  
    def passwordUnique?(password)
      @passwordHash.each do | service, service_hash |
        service_hash.each do | service_key, service_key_value |
          if service_key_value == password
            return false && break
          else
            return true && break
          end
        end
      end
    end
  
    # add  ~ adds a service and its password
    def add(service, password)
      if passwordUnique?(password)
        @passwordHash[service] = Hash.new
        @passwordHash[service][:password] = password
        @passwordHash[service][:date_added] = Time.now
      end
      return @passwordHash
    end
  
  # update ~ updates the password for a specific service
  
    def update(service, password)
      if passwordUnique?(password) && @passwordHash.key?(service)
        @passwordHash[service][:password] = password
        @passwordHash[service][:date_updated] = Time.now
      end
      return @passwordHash
    end
  
  # password_for ~ returns the password for a specific service
  
    def password_for(service)
      @passwordHash[service][:password]
    end
  
  # remove ~ deletes a service and its password
  
    def remove(service)
      @passwordHash.delete(service)
    end  
  
  # services ~ returns a list of all services
  
    def services
        @passwordHash.keys
    end
  
    # sort_by  ~ sorts by service name or date added
    # args ~ 
    # 'service'
    # 'service', 'reverse'
    # 'added_on'
    # 'added_on', 'reverse'
    def sort_by(*sort_by_x)
    end

    
  end
  

pwm = PasswordManager2.new

pwm.add('makersbnb', 'qwerty789')
pwm.add('acebook', 'password123')
pp pwm.update('acebook', 'pas2sword123')

#pp pwm.sort_by('poo')
pp pwm.services