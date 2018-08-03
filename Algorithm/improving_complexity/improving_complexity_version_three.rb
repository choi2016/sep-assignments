def improve_space_complexity(*arrays)
  combined_array = arrays.map {|array| array}.flatten!.sort!
end