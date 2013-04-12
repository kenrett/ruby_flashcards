require_relative 'flashcard'

class ReaderWriter
  def self.read(file)
    lines = []
    flashcards = []
    qa = []
    File.foreach(file) do |line| 
      lines << line.chomp if (line != "\n")
    end

    lines.each_index { |i| qa << [lines[i], lines[i+1]] if i.even? }
    qa.each { |card| flashcards << Flashcard.new(card) }

    flashcards 
  end
end
