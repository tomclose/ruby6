library = [
    { :title => "Structure and Interpretation of Computer Programs",
      :authors => "Harold Abelson; Gerald Jay Sussman"},
    { :title => "C Programming Language",
      :authors => "Brian W. Kernighan; Dennis M. Ritchie"},
    { :title => "The Art of Computer Programming", 
      :authors => "Donald Knuth"},
    { :title => "Free Software, Free Society",
      :authors => "Richard Stallman"}
]



# Returns true if the library contains a book
# with the given title, false otherwise
#
def has_book?(library, title)

end

# Returns true if the library contains a book
# with the given author, false otherwise
#
def has_author?(library, author)
    library.map{|b| b[:authors].split("; ")}.flatten.include?(author)
end

# Adds a book to the library.
#    
#   library #=> []
#   add_book(library, {:title => "Book", :author => "Bob"})
#   library #=> [{:title => "Book", :author => "Bob"}]
#
def add_book(library, book)

end


