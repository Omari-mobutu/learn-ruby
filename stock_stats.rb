require_relative 'csv_reader.rb'

reader = Csvreader.new

ARGV.each do |csv_file_name|
  STDERR.puts "Processing #{csv_file_name}"
  reader.csv_file_reader(csv_file_name)
end

puts "Total value = #{reader.total_value_in_stock}"
