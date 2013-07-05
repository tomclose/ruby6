

class ALibrary
  def initialize
    @books = [
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
  end


  def titles
    @books.map {|b| b[:title]}
  end

  def authors
    @books.map {|b| b[:authors].split("; ")}.flatten
  end

  def has_author?(author)
    authors.include?(author)
  end

  def has_title?(title)
    titles.include?(title)
  end

  def add_book(title, authors)
    books << {:title => title, :authors => authors}
  end

  def authors_with_titles
    author_books = Hash.new { [] }
    @books.each do |book|
      book[:authors].split("; ").each do |a|
        author_books[a] = author_books[a] << book[:title]
      end   
    end
    author_books
  end


end