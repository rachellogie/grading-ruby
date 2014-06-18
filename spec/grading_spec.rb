require_relative '../lib/grading'

describe Grading do
  it "returns the diffs between the numbers" do

    input = [6,3,5,4,3,4,4,5]

    grader = Grading.new(input)

    actual = grader.diffs

    expected = [:down,:up,:down,:down,:up,:even,:up]
    expect(actual).to eq expected
  end
end