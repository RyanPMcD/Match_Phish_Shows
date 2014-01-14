require 'csv'

file1 = "./danis_shows.csv"
file2 = "./ryans_shows.csv"

show = []
CSV.foreach(file1) do |row1|
	CSV.foreach(file2) do |row2|
		if row1 == row2
			show << "#{row2[0]} #{row2[1]}"
		end
	end
end
File.open('results.rtf', 'w') do |f|
	f.puts "We attended: "
	show.each do |s|    
		f.puts "#{s} together"
	end
	f.puts "Bringing the grand total to #{show.length} shows together!"

end
