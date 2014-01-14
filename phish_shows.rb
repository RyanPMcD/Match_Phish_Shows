require 'csv'

file1 = "./daves_shows.csv"
file2 = "./danis_shows.csv"
file3 = "./ryans_shows.csv"
first = []
show = []
CSV.foreach(file1) do |row1|
	CSV.foreach(file2) do |row2|
		if row1 == row2
			first << row2
		end
	end
end
CSV.foreach(file3) do |row3|
	first.each do |x|
		if x == row3
			show << "#{row3[0]} #{row3[1]}"
		end
	end
end
File.open('results4.rtf', 'w') do |f|
	f.puts "We all attended:"
	show.each do |s|    
		f.puts "#{s} together"
	end
	f.puts "Bringing the grand total to #{show.length} shows together!"

end
