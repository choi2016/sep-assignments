def recursive_binary_searcher(array, item)
  if array.include?(item)
    mid_point = (array.length) / 2
    if array[mid_point] == item
      puts "#{item}"
    elsif array[mid_point] < item
      new_array = array[mid_point..(array.length)].map{|x| x}
      recursive_binary_searcher(new_array,item)
    elsif array[mid_point] > item
      new_array = array[0..mid_point].map{|x| x}
      recursive_binary_searcher(new_array,item)
    end
  else
    puts "Not Found"
  end
end