require 'pg'

def setup_test_database
  connection = Environment.connection
  connection.exec("INSERT INTO bookmarks (title, url) VALUES ('makers', 'http://www.makersacademy.com');")
  connection.exec("INSERT INTO bookmarks (title, url) VALUES ('destroy all software', 'http://www.destroyallsoftware.com');")
  connection.exec("INSERT INTO bookmarks (title, url) VALUES ('google', 'http://www.google.com');")
end
