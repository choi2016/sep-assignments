def improve_time_complexity(*arrays)
  combined_array = []
  arrays.each do |array|
    array.each do |value|
      combined_array << value
    end
  end
  combined_array.sort!
end