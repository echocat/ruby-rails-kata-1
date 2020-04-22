namespace :slurp do
  desc "TODO"

  task Books: :environment do
    require "csv"
    books_text = File.read(Rails.root.join("data", "books.csv"))
    #books_text = CSV.read("data/books.csv", :col_sep => ';' )
    csv = CSV.parse(books_text, :headers => true, :col_sep=> ';',:encoding => "ISO-8859-1")
    csv.each do |row|
        books = row.to_hash
        puts books["title"]
    end
  end

  task Authors: :environment do
    require "csv"
    authors_text = File.read(Rails.root.join("data", "authors.csv"))
    csv = CSV.parse(authors_text, :headers => true,  :col_sep=> ';', :encoding => "ISO-8859-1")
    csv.each do |row|
        authors = row.to_hash
    end
  end

  task Magazines: :environment do
    require "csv"
    magazines_text = File.read(Rails.root.join("data", "magazines.csv"))
    csv = CSV.parse(magazines_text, :headers => true,  :col_sep=> ';', :encoding => "ISO-8859-1")
    csv.each do |row|
        magazines = row.to_hash
    end
  end

end
