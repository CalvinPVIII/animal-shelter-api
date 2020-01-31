class Animal < ApplicationRecord
  validates :name,:bio,:species,:breed,:gender,:image, :presence => true

  def self.search_species(species)
      where("species like ?", "%#{species.titleize}%")
    end

    def self.search_gender(gender)
        where("gender like ?", "#{gender.titleize}")
      end
      def self.search_breed(breed)
          where("breed like ?", "%#{breed.titleize}%")
        end
end
