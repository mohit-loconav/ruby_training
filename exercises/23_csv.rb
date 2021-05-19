employees = Hash.new()

File.open("23.csv", "r") do |file|
  file.gets
  while line = file.gets
    name, id, designation = line.split(',').map { |el| el.strip }
    employees[:"#{designation}"] = employees[:"#{designation}"] || []
    employees[:"#{designation}"] << "#{name} (EmpId: #{id})"
  end
end

File.open("23.txt", "w") do |file|
  employees.sort.each do |row|
    file.puts row[0].to_s + (row[1].length>1 ? 's' : '')
    row[1].each { |emp| file.puts emp }
  end
end
