require_relative 'flashcard'
require_relative 'reader_writer'

class Interface
  attr_reader :all_flashcards, :shuffle
  def initialize(filename)
    @all_flashcards = load(filename)
  end

  def load(filename)
    ReaderWriter.read(filename) # returns an array of objects (the actual flashcards)
  end

  def display
    @all_flashcards.each do |flashcard| 
      puts flashcard.question
      answer = gets.chomp
      validate(flashcard, answer.downcase)
    end 
  end

  def validate(flashcard, answer)
    if answer == flashcard.answer
      puts "Correct!"
      return true
    else
      puts "Nope, you're stupid!"
      return false
    end
  end

  def shuffle
    @all_flashcards.shuffle!
  end
end


###################################
# Drive Code
# class FlashCard
#   attr_reader :question, :answer
#   def initialize(arg)
#     @question = "here is a question: #{arg}"
#     @answer = "#{arg}"
#   end
# end



interface = Interface.new('flashcard_sample.txt')
p interface.display



