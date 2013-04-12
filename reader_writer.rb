class ReaderWriter
  def initialize(input)
    @filename = input
    parse_data(@filename)
  end

  def parse_data(file)
    CSV.foreach(file) do |item|


end


#What?!