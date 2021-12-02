#!/usr/bin/env ruby

incr_count  = 0
prev_depths = Array.new

File.foreach("input.txt") do |depth|
  prev_depths.append(depth.to_i)
  if prev_depths.length > 3
    if prev_depths[0,3].sum < prev_depths[1,3].sum
      incr_count += 1
    end
    prev_depths.shift
  end
end

puts "Sliding-window depth increments: #{incr_count}"
