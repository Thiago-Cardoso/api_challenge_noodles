class InformationService
    def initialize(time_cook, time_hourglass_one, time_hourglass_two)
      @time_cook = time_cook
      @time_hourglass_one = time_hourglass_one
      @time_hourglass_two = time_hourglass_two
    end

    def call
      result = CalculateNoodles::Calculate.new(@time_cook, @time_hourglass_one, @time_hourglass_two).calculate_time
      {"time_cook" => @time_cook, "time_hourglass_one" => @time_hourglass_one, 
        "time_hourglass_two" => @time_hourglass_two, "result_time_cook" => result}
    end
end