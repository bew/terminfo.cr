require "./*"

module Terminfo
  class Error < Exception
  end

  class ReadError < Error
    getter db_path : String

    def initialize(@db_path, cause = nil)
      super %(Unexpected end of file "#{@db_path}"), cause
    end
  end

  def self.from_term(term_name)
    # FIXME: if first dbpath cannot be loaded, it should try the other ones!

    unless db_path = Searcher.dbpath_for_term term_name
      raise "No terminfo database found for terminal #{term_name}"
    end

    {from_file(db_path), db_path}
  end

  def self.from_file(db_path)
    File.open db_path do |file|
      Parser.new.parse file
    end
  rescue ex : IO::EOFError
    raise ReadError.new db_path, cause: ex
  end
end
