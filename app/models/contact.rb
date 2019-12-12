class Contact < ApplicationRecord
  validates :full_name, presence: true
  validates :email, presence: true, format: { with: /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i }
  validates :subject, presence: true
  validates :message, presence: true
end
