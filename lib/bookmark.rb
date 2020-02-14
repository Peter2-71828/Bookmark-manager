require 'pg'
require_relative './environment.rb'

class Bookmark

  attr_reader :title, :url

  def initialize(title, url)
    @title = title
    @url = url
  end

  def self.create(bookmarks)
    @list = []
    bookmarks.each { |title, url| @list << Bookmark.new(title, url)}
    return @list
  end

  def self.all
    connection = Environment.connection
    titles = connection.exec("SELECT (title) FROM bookmarks").map { |title| title['title'] }
    urls = connection.exec("SELECT (url) FROM bookmarks").map { |url| url['url'] }
    Bookmark.create(Hash[titles.zip(urls)])
  end

  def self.add_bookmark(title, url)
    connection = Environment.connection
    connection.exec("INSERT INTO bookmarks (title, url) VALUES ('#{title}', '#{url}');")
  end

end
