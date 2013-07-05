# Load in standard test frameworks
require 'minitest/spec'
require 'minitest/autorun'

# load in library_hash.rb
require_relative 'library_class'
require_relative 'a_library'

books = [
    { :title => "Structure and Interpretation of Computer Programs",
      :authors => "Harold Abelson; Gerald Jay Sussman"},
    { :title => "C Programming Language",
      :authors => "Brian W. Kernighan; Dennis M. Ritchie"},
    { :title => "The Art of Computer Programming", 
      :authors => "Donald Knuth"},
    { :title => "Free Software, Free Society",
      :authors => "Richard Stallman"},
    { :title => "TeX: The Program",
        :authors => "Donald Knuth"}
]

# do the test
describe 'Library' do
    before do 
        @library = Library.new(books)
    end

    it "has_title? works" do
        assert @library.has_title?("The Art of Computer Programming")
        assert !@library.has_title?("The Art of Computer Burning")
    end

    it "has_author?" do
        assert @library.has_author?("Donald Knuth")
        assert !@library.has_author?("Donald Duck")
    end

    it 'titles' do
        assert_equal ["Structure and Interpretation of Computer Programs", 
            "C Programming Language", "The Art of Computer Programming",
            "Free Software, Free Society",
            "TeX: The Program"].sort, @library.titles.sort
    end

    it 'authors' do
        assert_equal ["Harold Abelson", "Gerald Jay Sussman",
            "Brian W. Kernighan", "Dennis M. Ritchie",
            "Donald Knuth", "Richard Stallman"].sort, @library.authors.sort
    end


    it 'add_book' do
        library2 = Library.new([])
        library2.add_book("Book", "Bob")
        assert_equal ["Book"], library2.titles
    end

    it 'authors_with_titles' do
    end

end
