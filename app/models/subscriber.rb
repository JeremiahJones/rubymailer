class Subscriber < ApplicationRecord
  validates :email, { presence: true, uniqueness: true }
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
end
