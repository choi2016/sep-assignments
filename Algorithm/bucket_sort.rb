def bucket_sort(collection)
  if collection.length <= 1
    return collection
  else
    bucket1, bucket2, bucket3, bucket4, bucket5 = [], [], [], [], []
    collection.each do |i|
      if i / 5 >= 0 && i / 5 <= 2
        bucket1.push(i)
      elsif i / 5 > 2 && i / 5 <= 4
        bucket2.push(i)
      elsif i / 5 > 4 && i / 5 <= 6
        bucket3.push(i)
      elsif i / 5 > 6 && i / 5 <= 8
        bucket4.push(i)
      else
        bucket5.push(i)
      end
    end

    sorted1 = insertion_sort(bucket1)
    sorted2 = insertion_sort(bucket2)
    sorted3 = insertion_sort(bucket3)
    sorted4 = insertion_sort(bucket4)
    sorted5 = insertion_sort(bucket5)

    sorted = sorted1 + sorted2 + sorted3 + sorted4 + sorted5
    return sorted
  end
end

def insertion_sort(collection)
  sorted_collection = [collection.delete_at(0)]
  for val in collection
    sorted_collection_index = 0
    while sorted_collection_index < sorted_collection.length
      if val <= sorted_collection[sorted_collection_index]
        sorted_collection.insert(sorted_collection_index, val)
        break
      elsif sorted_collection_index == sorted_collection.length - 1
        sorted_collection.insert(sorted_collection_index + 1, val)
        break
      end
      sorted_collection_index += 1
    end
  end
  sorted_collection
end