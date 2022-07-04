def where_value_below(hsh, num)
    hsh.filter { |key, value| value < num } 
  end

input_hash = {'chips' => 2.5, 'burger' => 10, 'slaw' => 2.0, 'salad' => 3.0}
input_num = 5


puts where_value_below(input_hash, input_num)

