require 'roo'

xlsx = Roo::Spreadsheet.open('C:\Users\Shen\Desktop\punchout_characters_v2.xlsx')
my_hash = {}

xlsx.each_with_pagename do |name, sheet|
	my_hash[name] = {}
	row = 1
	while sheet.cell(row,1) != nil
		my_hash[name][sheet.cell(row,1)] = [] 
		column = 2
		while sheet.cell(row,column) != nil
			my_hash[name][sheet.cell(row,1)].push(sheet.cell(row,column))
			column +=1
		end
		row +=1
	end	
end

puts my_hash["char_2"][":never_met"][0]

char_1 = xlsx.sheet(1)
puts char_1.cell(1,1)
puts char_1.parse(id: ':never_met')
