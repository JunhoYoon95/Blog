class Teacher < ApplicationRecord
    has_many :reviews
    has_many :likes
end
