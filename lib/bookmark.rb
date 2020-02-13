require 'pg'
class Bookmark

  def self.set_env
    if ENV['ENVIRONMENT'] == 'test'
      PG.connect(dbname: 'bookmark_manager_test')
    else
      PG.connect(dbname: 'bookmark_manager')
    end
  end

  def self.all
    connection = Bookmark.set_env
    connection.exec("SELECT url FROM bookmarks").map { |bookmark| bookmark['url'] }
  end

  def self.add_bookmark(new_bookmark)
    connection = Bookmark.set_env
    connection.exec("INSERT INTO bookmarks (url) VALUES ('#{new_bookmark}');")
  end

end
