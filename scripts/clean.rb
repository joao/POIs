require 'json'


# Categories list
#
# $.each($('li[data-category-id]'), function(index, obj){
#   console.log($(this).data('category-id') + " " + $(this).children('span.text').text());   
# });

categories = [
  {
    'id' => '8',
    'name' => 'Apoio Social'
  },
  {
    'id' => '15',
    'name' => 'Associativismo'
  },
  {
    'id' => '1',
    'name' => 'Casa'
  },
  {
    'id' => '11',
    'name' => 'Cidadania'
  },
  {
    'id' => '16',
    'name' => 'Cultura'
  },
  {
    'id' => '17',
    'name' => 'Desporto'
  },
  {
    'id' => '2',
    'name' => 'Dinheiro'
  },
  {
    'id' => '3',
    'name' => 'Documentos'
  },
  {
    'id' => '4',
    'name' => 'Educação'
  },
  {
    'id' => '5',
    'name' => 'Emprego'
  },
  {
    'id' => '12',
    'name' => 'Família'
  },
  {
    'id' => '18',
    'name' => 'Formação'
  },
  {
    'id' => '6',
    'name' => 'Impostos e Contribuições'
  },
  {
    'id' => '13',
    'name' => 'Justiça e Tribunais'
  },
  {
    'id' => '21',
    'name' => 'Lazer'
  },
  {
    'id' => '14',
    'name' => 'Negócio'
  },
  {
    'id' => '7',
    'name' => 'Saúde'
  },
  {
    'id' => '22',
    'name' => 'Segurança'
  },
  {
    'id' => '9',
    'name' => 'Tempos-Livres'
  },
  {
    'id' => '20',
    'name' => 'Transportes'
  },
  {
    'id' => '10',
    'name' => 'Veículo'
  }
]

total_count = 0

(1..8).each do |number|

  json_file =  File.read("pois_0#{number}.json")

  hash = JSON.parse(json_file)
  hash_count = hash['Payload'].count
  puts "File 0#{number}: #{hash_count} POIs"

  total_count = total_count + hash_count

end

puts "Total: #{total_count} POIs"