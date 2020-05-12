#!/bin/ruby
# frozen_string_literal: true

require 'json'
require 'stringio'

#
# Complete the 'minimum_movement' function below.
#
# The function is expected to return an INTEGER.
# The function accepts INTEGER_ARRAY obstacle_lanes as parameter.
#

def minimum_movement(obstacle_lanes)
  # Write your code here
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

obstacle_lanes_count = gets.strip.to_i

obstacle_lanes = Array.new(obstacle_lanes_count)

obstacle_lanes_count.times do |i|
  obstacle_lanes_item = gets.strip.to_i
  obstacle_lanes[i] = obstacle_lanes_item
end

result = minimum_movement(obstacle_lanes)

fptr.write result
fptr.write "\n"

fptr.close
