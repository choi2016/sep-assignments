require 'benchmark'
require_relative 'poorly_written_ruby'
require_relative 'improving_complexity_version_one'
require_relative 'improving_complexity_version_two'
require_relative 'improving_complexity_version_three'

array = (1..5000).to_a.shuffle!

Benchmark.bm do |x|
  x.report('poorly written ruby:') {poorly_written_ruby(array)}
  x.report('code optimization:') {optimized_ruby(array)}
  x.report('time complexity:') {improve_time_complexity(array)}
  x.report('space complexity:') {improve_space_complexity(array)}
end