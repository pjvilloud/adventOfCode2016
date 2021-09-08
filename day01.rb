class Day01

  # @param [String] instruction_string
  def calculate_block_distance(instruction_string)
    x = 0
    y = 0
    head = 'N'
    instructions = instruction_string.split(', ')
    instructions.each { |instruction|
      step = Integer(instruction[1..-1])
      case instruction[0]
      when 'R'
        case head
        when 'N'
          x += step
          head = 'E'
        when 'E'
          y -= step
          head = 'S'
        when 'S'
          x -= step
          head = 'W'
        when 'W'
          y += step
          head = 'N'
        end
      when 'L'
        case head
        when 'N'
          x -= step
          head = 'W'
        when 'E'
          y += step
          head = 'N'
        when 'S'
          x += step
          head = 'E'
        when 'W'
          y -= step
          head = 'S'
        end
      end
    }
    x.abs + y.abs
  end
end