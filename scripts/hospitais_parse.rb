require 'json'

json_file =  File.read("hospitais.json")

hash = JSON.parse(json_file)
hospitais = hash['Result']
hospitais_count = hospitais.count
puts hospitais_count
puts

hospitais.each do |hospital|
  if (hospital['District'] == 'Vila Real')
    puts hospital['Name']
    puts hospital['Address']
    puts hospital['District']
    puts hospital['Longitude'].to_s + ' ' + hospital['Latitude'].to_s
    puts
  end
end

