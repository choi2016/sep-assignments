def heap_sort(collection)
  if collection.length <= 1
    return collection
  else
    create_heap(collection)
    first = 0
    last = collection.length - 1
    while last > 0
      collection[last], collection[0] = collection[0], collection[last]
      last -= 1
      swap_down(collection, first, last)
    end
    return collection
  end
end

def create_heap(collection)
  first = collection.length / 2
  last = collection.length - 1
  while first >= 0
    swap_down(collection, first, last)
    first -= 1
  end
  collection
end

def swap_down(collection, first, last)
  root = first
  while root <= last
    child = root * 2 + 1
    if child > last
      return
    elsif child + 1 <= last && collection[child] < collection[child + 1]
      child += 1
    end
    if collection[root] < collection[child]
      collection[root], collection[child] = collection[child], collection[root]
      root = child
    else
      return
    end
  end
end