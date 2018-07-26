class Dog
attr_accessor :name, :breed, :id
# DB = {:conn => SQLite3::Database.new("db/dogs.db")}

def initialize(id: nil, name:, breed:)
  @id = id
  @name = name
  @breed = breed
end

def self.create_table
  sql = <<-SQL
  CREATE TABLE IF NOT EXISTS dogs (
    id INTEGER PRIMARY KEY,
    name TEXT,
    breed TEXT,
  )
  SQL
  DB[:conn].execute(sql)
end


end
