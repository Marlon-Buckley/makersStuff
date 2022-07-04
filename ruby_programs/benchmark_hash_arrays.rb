require 'benchmark'


passwordsArrayHash = [ 
  {"service" => "google", "password" => "password123" }, 
  {"service" => "twitter", "password" => "qwerty789" } 
]

passwordsNestedHash = {
  'google' => {
    'password' => 'password123',
    'added_on' => '22/03/22',
  },
  'twitter' => {
    'password' => 'qwerty789',
    'added_on' => '22/03/22',
  } 
}

input1 = passwordsArrayHash.find { |password| password["service"] == "google"}
input2 = passwordsNestedHash.find {["google"]}
  
puts Benchmark.measure {
      1000_000.times do
        input1
      end
    }
  
puts Benchmark.measure {
      1000_000.times do
        input2
      end
    }


puts passwordsNestedHash.find {["google"]}
