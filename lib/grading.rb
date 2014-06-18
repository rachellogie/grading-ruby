class Grading

  def initialize(input)
    @input = input
  end

  def diffs
    output = []
    @input.each_with_index do |num, i|
      next if i == 0
      if num > @input[i - 1]
        output << :up
      elsif num == @input[i - 1]
        output << :even
      else
        output << :down
      end
    end
    output
  end
end