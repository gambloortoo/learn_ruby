class Timer
    attr_reader :seconds
    attr_accessor :time_string

    def initialize
        @seconds = 0
    end

    def seconds=(input)
        @seconds = input

        # Handle seconds format
        sec = input % 60
        @time_string = sec < 10 ? ":0" + sec.to_s : ":" + sec.to_s

        # Handle minutes format
        input /= 60
        min = input % 60
        @time_string = min < 10 ? ":0" + min.to_s + @time_string : ":" + min.to_s + @time_string

        # Handle hours format
        input /= 60
        @time_string = input < 10 ? "0" + input.to_s + @time_string : input.to_s + @time_string

    end
end
