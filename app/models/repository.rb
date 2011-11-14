class Repository
  include MongoMapper::Document

  key :name, String
  key :lang, Array
end
