class Timer

  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def padded (pad_time)
    if pad_time < 10
      pad_time = '0' + pad_time.to_s
    end
    pad_time.to_s
  end

  def time_string
    hours = @seconds / 3600
    minutes = (@seconds % 3600) / 60
    seconds = @seconds % 60
    "#{ padded(hours) }:#{ padded(minutes) }:#{ padded(seconds) }"
  end

end
