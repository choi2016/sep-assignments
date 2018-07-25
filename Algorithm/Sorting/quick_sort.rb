def quick_sort(collection)
  if collection.length <= 1
    return collection
  else
    pivot = collection.pop
    left_collection = []
    right_collection = []

    collection.each do |i|
      if i <= pivot
        left_collection.push(i)
      else
        right_collection.push(i)
      end
    end

    sorted_left = quick_sort(left_collection)
    sorted_right = quick_sort(right_collection)
    return sorted_left + [pivot] + sorted_right
  end
end