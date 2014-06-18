require 'json'
require_relative '../lib/grading'

file = File.read('../data/grades.json')
data = JSON.parse(file)

array =  data.map {|each| each[1]}

count = 0
array.each do |each|
  grader = Grading.new(each)
  count += 1 if grader.in_decline?
end

p count