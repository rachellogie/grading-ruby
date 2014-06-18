require_relative '../lib/grading'

class CountGrading

  def initialize(data)
    @data = data
  end

  def count_in_decline
    array =  @data.map {|each| each[1]}

    count = 0
    array.each do |each|
      grader = Grading.new(each)
      count += 1 if grader.in_decline?
    end
    count
  end

  def count_not_in_decline
    array =  @data.map {|each| each[1]}

    count = 0
    array.each do |each|
      grader = Grading.new(each)
      count += 1 if !grader.in_decline?
    end
    count
  end
end