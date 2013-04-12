require_relative 'flashcard'
require_relative 'reader_writer'

class Interface
  attr_reader :all_flashcards, :shuffle
  def initialize(filename)
    @all_flashcards = load(filename)
    self.shuffle
  end

  def load(filename)
    ReaderWriter.read(filename) # returns an array of objects (the actual flashcards)
  end

  def display
    @all_flashcards.each do |flashcard| 
      puts flashcard.question
      right_answer(flashcard)
    end 
  end

  def right_answer(flashcard)
    foobar = true
    while foobar
      answer = gets.chomp
      if answer == flashcard.answer
        puts "Correct!"
        foobar = false
      else
        puts "You're stupid. Try again!"
      end
    end
  end

  def shuffle
    @all_flashcards.shuffle!
  end
end

interface = Interface.new('flashcard_sample.txt')
interface.display



