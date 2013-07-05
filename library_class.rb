
class Library
    def initialize(books) 
        @books = books
    end

    def has_book?
    end

    def has_author?
    end

    def add_book(title, authors)
    end

    # Extension -----------
    def books
    end

    def authors
    end

    def authors_with_books
    end
end

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

library = Library.new(books)