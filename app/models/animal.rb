class Animal < ApplicationRecord
  validates :name,:bio,:species,:breed,:gender,:image, :presence => true


end
