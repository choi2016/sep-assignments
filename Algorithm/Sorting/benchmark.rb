require 'benchmark'
require_relative 'quick_sort'
require_relative 'heap_sort'
require_relative 'bucket_sort'
require_relative 'insertion_sort'
require_relative 'selection_sort'
require_relative 'bubble_sort'
require_relative 'merge_sort'

array = []
0.upto(50) do |n|
  array.push(n)
end
array.shuffle!

puts "Quick"
puts Benchmark.measure {
  quick_sort(array)
}
puts "Heap"
puts Benchmark.measure {
  heap_sort(array)
}
puts "Bucket"
puts Benchmark.measure {
  bucket_sort(array)
}
puts "Insertion"
puts Benchmark.measure {
  insertion_sort(array)
}
puts "Selection"
puts Benchmark.measure {
  selection_sort(array)
}
puts "Bubble"
puts Benchmark.measure {
  bubble_sort(array)
}
puts "Merge"
puts Benchmark.measure {
  merge_sort(array)
}