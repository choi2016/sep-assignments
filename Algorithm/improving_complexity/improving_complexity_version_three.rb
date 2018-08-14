def improve_space_complexity(*array)
  heapify(array.flatten!)
  last = array.length - 1

  while last > 0
    array[last], array[0] = array[0], array[last]
    last -= 1
    sift_down(array, 0, last)
  end
  array
end

def heapify(array)
  start = (array.length - 2) / 2

  while start >= 0
    sift_down(array, start, array.length - 1)
    start -= 1
  end
  array
end

def sift_down(array, start, last)
  root = start

  while (root * 2 + 1) <= last
    child = (root * 2 + 1)
    temp = root

    if array[temp] < array[child]
      temp = child
    end

    if child + 1 <= last && array[temp] < array[child + 1]
      temp = child + 1
    end

    if temp != root
      array[root], array[temp] = array[temp], array[root]
      root = temp
    else
      return
    end
  end
end

