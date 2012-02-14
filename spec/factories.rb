Factory.define :author do |author|
  author.name                  "Michael Hartl"
end

Factory.define :book do |book|
  book.name "Foo bar"
  book.code "123"
  book.association :author
end
