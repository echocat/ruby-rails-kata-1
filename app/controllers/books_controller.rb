class BooksController < ApplicationController
  def csv_txt
    require "csv"
    @all_books = []

    books_text = File.read(Rails.root.join("data", "books.csv"))
    csv = CSV.parse(books_text, :headers => true, :col_sep=> ';',:encoding => "ISO-8859-1")
    csv.each do |row|
        @all_books << row.to_hash
    end

  end

  def index
    csv_txt
    @books = @all_books
  end

  def show
    csv_txt
    @book = @all_books.find(params[:isbn])

  end
end
