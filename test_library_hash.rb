# Load in standard test frameworks
require 'minitest/spec'
require 'minitest/autorun'

# load in library_hash.rb
require_relative 'library_hash'

library = [
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
describe 'has_title?' do
    it "works" do
        assert has_title?(library, "The Art of Computer Programming")
        assert !has_title?(library, "The Art of Computer Burning")
    end
end

describe 'has_author?' do
    it "works" do
        assert has_author?(library, "Donald Knuth")
        assert !has_author?(library, "Donald Duck")
    end
end

describe 'titles' do
    it 'works' do
        assert_equal ["Structure and Interpretation of Computer Programs", 
            "C Programming Language", "The Art of Computer Programming",
            "Free Software, Free Society",
            "TeX: The Program"].sort, titles(library).sort
    end
end

describe 'authors' do
    it 'works' do
        assert_equal ["Harold Abelson", "Gerald Jay Sussman",
            "Brian W. Kernighan", "Dennis M. Ritchie",
            "Donald Knuth", "Richard Stallman"].sort, authors(library).sort
    end
end


describe 'add_book' do
    it 'works' do
        library = []
        add_book(library, {:title => "Book", :author => "Bob"})
        assert_equal library [{:title => "Book", :author => "Bob"}], library
    end
end
