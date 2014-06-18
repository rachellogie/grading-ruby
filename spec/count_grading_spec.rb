require_relative '../lib/count_grading'
require 'json'

describe CountGrading do

  it "reads the data and returns the correct number of students in decline" do

    file = File.read('./data/grades.json')
    data = JSON.parse(file)

    grader = CountGrading.new(data)

    actual = grader.count_in_decline

    expected = 27

    expect(actual).to eq expected
  end

  it "reads the data and returns the correct number of students not in decline" do

    file = File.read('./data/grades.json')
    data = JSON.parse(file)

    grader = CountGrading.new(data)

    actual = grader.count_not_in_decline

    expected = 73

    expect(actual).to eq expected
  end

end