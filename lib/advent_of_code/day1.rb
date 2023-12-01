module AdventOfCode
  module Day1
    def self.initialize
      input = File.read('partTwoInput.txt')
      sum = 0

      input.each_line do |line|
        line = line.gsub 'oneight', 'oneeight'
        line = line.gsub 'threeight', 'threeeight'
        line = line.gsub 'fiveight', 'fiveeight'
        line = line.gsub 'nineight', 'nineeight'
        line = line.gsub 'twone', 'twoone'
        line = line.gsub 'sevenine', 'sevennine'
        line = line.gsub 'eightwo', 'eighttwo'

        line = line.gsub 'one', '1'
        line = line.gsub 'two', '2'
        line = line.gsub 'three', '3'
        line = line.gsub 'four', '4'
        line = line.gsub 'five', '5'
        line = line.gsub 'six', '6'
        line = line.gsub 'seven', '7'
        line = line.gsub 'eight', '8'
        line = line.gsub 'nine', '9'

        only_digits = line.tr('^0-9', '')
        calibration_value = only_digits[0] + only_digits[-1]
        sum += calibration_value.to_i
      end
      puts sum.to_s
    end
  end
end
