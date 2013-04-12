class ReaderWriter
  def self.read
    lines = []
    flashcards = []
    File.foreach('flashcard_sample.txt') do |line| 
      lines << line if line != "\n"
    end

    flashcards.each_with_index do |line, i|
      if line.odd?
        question = line[i]
      else
        answer = line[i]
      end
      flashcards << Flashcard.new(question, answer)
    end 
    flashcards 
  end
end

puts ReaderWriter.read.inspect
  def initialize(input)
    @filename = input
    parse_data(@filename)
  end

  def parse_data(file)
    FILE.open(file) do |item|
end