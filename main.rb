#!/bin/ruby
# frozen_string_literal: true

require 'json'
require 'stringio'

#
# Complete the 'minimumMovement' function below.
#
# The function is expected to return an INTEGER.
# The function accepts INTEGER_ARRAY obstacleLanes as parameter.
#

def minimumMovement(obstacleLanes)
  car_lane = 2
  turns = 0
  last_obstacle_lane = 0
  obstacleLanes.each do |next_obstacle_lane|
    if car_lane.zero? && next_obstacle_lane != last_obstacle_lane
      car_lane = ([1, 2, 3] - [last_obstacle_lane, next_obstacle_lane]).first
      last_obstacle_lane = next_obstacle_lane
    end
    next unless car_lane == next_obstacle_lane

    turns += 1
    last_obstacle_lane = next_obstacle_lane
    car_lane = 0
  end
  turns
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

obstacleLanes_count = gets.strip.to_i

obstacleLanes = Array.new(obstacleLanes_count)

obstacleLanes_count.times do |i|
  obstacleLanes_item = gets.strip.to_i
  obstacleLanes[i] = obstacleLanes_item
end

result = minimumMovement obstacleLanes

fptr.write result
fptr.write "\n"

fptr.close
