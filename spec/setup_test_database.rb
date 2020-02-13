require 'pg'

def setup_test_database
  connection = Environment.connection
  connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.makersacademy.com');")
  connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.destroyallsoftware.com');")
  connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.google.com');")
end
