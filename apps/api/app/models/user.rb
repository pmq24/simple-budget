class User < ApplicationRecord
  validates(:email,
            presence: true,
            uniqueness: true,
            format: { with: /^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$/})
end
