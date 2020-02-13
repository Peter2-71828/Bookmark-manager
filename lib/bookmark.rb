require 'pg'
require_relative './environment.rb'

class Bookmark

  def self.all
    connection = Environment.connection
    connection.exec("SELECT url FROM bookmarks").map { |bookmark| bookmark['url'] }
  end

  def self.add_bookmark(new_bookmark)
    connection = Environment.connection
    connection.exec("INSERT INTO bookmarks (url) VALUES ('#{new_bookmark}');")
  end

end
