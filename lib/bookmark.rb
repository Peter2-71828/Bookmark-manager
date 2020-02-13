require 'pg'
require_relative './environment.rb'

class Bookmark

  attr_reader :title, :url

  def initialize(title:, url:)
    @title = title
    @url = url
    @list = []
  end

  def self.all
    connection = Environment.connection
    p connection.exec("SELECT (title, url) FROM bookmarks").each { |title, url| @list << Bookmark.new(title, url) }
  end

  def self.add_bookmark(title, url)
    connection = Environment.connection
    connection.exec("INSERT INTO bookmarks (title, url) VALUES ('#{title}', '#{url}');")
  end

end
