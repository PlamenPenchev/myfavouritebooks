class Book < ActiveRecord::Base
    # add to app/models/Movie.rb
    def self.all_genres ; %w[Action\ and\ Adventure Science\ fiction Drama Horror Romance Mystery] ; end #  shortcut: array of strings
end