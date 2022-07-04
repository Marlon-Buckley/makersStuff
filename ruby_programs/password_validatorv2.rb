def sufficient_length?(password)
    return password.length > 7
  end


  require_chars = /[!@$%&]/

def special_chars_included?(password)
    # `/[!@$%&]/` is the regex
    # it matches (detects) any of the 5 special characters
    if password =~ required_chars
        return true
    else
        return false
    end
end


def valid?(password)
    if sufficient_length?(password) && special_chars_included?(password)
      return true
    else
      return false
    end
  end


puts valid?("1231212312!")
