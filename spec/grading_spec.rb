require_relative '../lib/grading'
require 'json'

describe 'Grading' do
  it "returns the diffs between the numbers" do

    input = [6,3,5,4,3,4,4,5]

    grader = Grading.new(input)

    actual = grader.diffs

    expected = [:down,:up,:down,:down,:up,:even,:up]

    expect(actual).to eq expected
  end

  it "returns true if they are in decline" do

    input = [10, 10, 10, 9, 9, 8, 8, 8, 8, 7]

    grader = Grading.new(input)

    actual = grader.in_decline?

    expected = true

    expect(actual).to eq expected
  end

  it "returns false if they are not in decline" do

    input = [10, 9, 8, 7, 8]

    grader = Grading.new(input)

    actual = grader.in_decline?

    expected = false

    expect(actual).to eq expected
  end

  it "returns false if they have less than three movement data points" do

    input = [10, 9, 8]

    grader = Grading.new(input)

    actual = grader.in_decline?

    expected = false

    expect(actual).to eq expected
  end

end