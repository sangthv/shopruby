class User < ApplicationRecord
    has_secure_password
    has_many :students
    # has_many :parents
end
