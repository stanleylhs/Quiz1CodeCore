require './q07_helper_methods.rb'

class Book
  attr_writer :title
  def initialize
    @title
    @chapters = []
  end
  # def title
  #   @title = titleize(title)
  # end
  def add_chapter(str)
    @chapters << str
  end
  def chapters
    p "Your book: #{@title} has #{@chapters.length} chapters:"
    @chapters.each_index do |i|
      p "#{i + 1}. #{@chapters[i]}"
    end
  end
end

book = Book.new
book.title = "My Awesome Book"
book.add_chapter("My Awesome Chapter 1")
book.add_chapter("My Awesome Chapter 2")
book.chapters