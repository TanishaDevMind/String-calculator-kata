# frozen_string_literal: true

class StringCalculator
  def add(*numbers)
    result = []
    numbers.each do |number|
      num_arr = number.scan(/-?\d+/).map(&:to_i)
      negative_numbers = num_arr.select { |n| n < 0 }
      result << num_arr.sum
    end
    result.join(",")
  end
end