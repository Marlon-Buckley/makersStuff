def where_key_starts_with(hsh, letter)
    hsh.filter { |key, value| key.start_with?(letter)}
  end


input_hash = {'chips' => 2.5, 'burger' => 10, 'slaw' => 2.0, 'salad' => 3.0}

input_string = 's'



puts where_key_starts_with(input_hash, input_string)





def where_key_starts_with2(hsh, letter)
    hsh.select { |key, value| key.start_with?(letter)}
  end




puts where_key_starts_with2(input_hash, input_string).class
