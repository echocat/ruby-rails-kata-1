class MagazinesController < ApplicationController
  def index
    require "csv"
    @magazines = []

    magazines_text = File.read(Rails.root.join("data", "magazines.csv"))
    #magazines_text = CSV.read("data/magazines.csv", :col_sep => ';' )
    csv = CSV.parse(magazines_text, :headers => true, :col_sep=> ';',:encoding => "ISO-8859-1")
    csv.each do |row|
        @magazines << row.to_hash
    end
  end

  def show
  end
end
