class Rover

    def initialize
      @x_coordinate = rand(1..9)
      @y_coordinate = rand(1..9)
      @direction = "N"
    end

    def read_instructions(string)
      input_array = string.upcase().split("")
      input_array.each do |letter|
        if letter == "M"
          move()
        elsif letter == "R"
          turn("R")
        elsif letter == "L"
          turn("L")
        else
          puts "Wrong input!"
        end

      end
        puts coordinate()
    end

    def move()
      if @direction == "N"
        @y_coordinate += 1
      elsif @direction == "E"
        @x_coordinate += 1
      elsif @direction == "W"
        @x_coordinate -= 1
      elsif @direction == "S"
        @y_coordinate -=1
      else
        return
      end
    end

    def turn(turn_direction)
      case turn_direction
      when "R"
        if @direction== "N"
          @direction = "E"
        elsif @direction =="E"
          @direction = "S"
        elsif @direction == "S"
          @direction = "W"
        elsif @direction == "W"
          @direction = "N"
        else
          return
        end
      when "L"
        if @direction== "N"
          @direction = "W"
        elsif @direction =="E"
          @direction = "N"
        elsif @direction == "S"
          @direction = "E"
        elsif @direction == "W"
          @direction = "S"
        else
          return
        end
      end
    end

    def coordinate()
      puts "X:#{@x_coordinate}, Y:#{@y_coordinate}, Direction:#{@direction}"
    end








end

ruby=Rover.new
