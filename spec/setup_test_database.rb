require 'pg'

def setup_test_database
    connection = Bookmark.set_env
    connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.makersacademy.com');")
    connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.destroyallsoftware.com');")
    connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.google.com');")
end
