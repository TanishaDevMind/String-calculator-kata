# frozen_string_literal: true

class StringCalculator
  def add(*numbers)
    result = []
    error_messages = []
    numbers.each do |number|
      num_arr = number.scan(/-?\d+/).map(&:to_i)
      negative_numbers = num_arr.select { |n| n < 0 }
      error_messages << "Negative numbers not allowed: #{negative_numbers}" and next if negative_numbers.any?
      result << num_arr.sum
    end
    unless error_messages.empty?
      error_messages.join("\n")
    else
      result.join(",")
    end
  end
end