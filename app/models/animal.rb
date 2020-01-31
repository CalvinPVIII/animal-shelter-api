class Animal < ApplicationRecord
  validates :name,:bio,:species,:breed,:gender,:image, :presence => true

  def self.search_species(species)
      where("species like ?", "%#{species.titleize}%")
    end

end
