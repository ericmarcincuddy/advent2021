#!/usr/bin/env ruby

incr_count = -1
prev_depth = -1

File.foreach("input.txt") do |depth|
  if prev_depth <= depth.to_i
    incr_count += 1
  end
  prev_depth = depth.to_i
end

puts "Depth increments: #{incr_count}"
