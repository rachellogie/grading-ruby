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

  def in_decline?
    array_without_evens = diffs.reject { |movement| movement == :even}
    if array_without_evens.length > 2
      !array_without_evens[-3..-1].include? :up
    else
      false
    end
  end

end