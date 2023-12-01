# frozen_string_literal: true

require_relative "advent_of_code/version"
require_relative "advent_of_code/day1"

module AdventOfCode
  class Error < StandardError; end

  AdventOfCode::Day1.initialize
end
