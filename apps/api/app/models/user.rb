class User < ApplicationRecord
  validates(
    :email,
    presence: true,
    uniqueness: true,
    format: {
      with: /\A[\w\-\.]+@([\w\-]+\.)+[\w\-]{2,4}\z/,
    },
  )
end
