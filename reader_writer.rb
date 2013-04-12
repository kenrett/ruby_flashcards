require_relative 'flashcard'

class ReaderWriter
  def self.read
    lines = []
    flashcards = []
    qa = []
    File.foreach('flashcard_sample.txt') do |line| 
      lines << line if (line != "\n")
    end

    lines.each_index { |i| qa << [lines[i], lines[i+1]] if i.even? }
    qa.each { |card| flashcards << Flashcard.new(card) }

    flashcards 
  end
end

puts ReaderWriter.read.inspect