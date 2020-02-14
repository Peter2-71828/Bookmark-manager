require 'pg'
require_relative './environment.rb'

class Bookmark

  attr_reader :title, :url, :titles, :urls

  def initialize(title, url)
    @title = title
    @url = url
  end

  def self.all
    connection = Environment.connection
    titles = url = connection.exec("SELECT (title) FROM bookmarks").map { |title| title['title'] }
    urls = connection.exec("SELECT (url) FROM bookmarks").map { |url| url['url'] }
    list = Hash[titles.zip(urls)]
  end

  def self.add_bookmark(title, url)
    connection = Environment.connection
    connection.exec("INSERT INTO bookmarks (title, url) VALUES ('#{title}', '#{url}');")
  end

end
