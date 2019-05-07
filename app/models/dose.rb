class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
  validates :description, presence: true
  validates :cocktail, uniqueness: { scope: :ingredient}

end


# A dose must have a cocktail and an ingredient, and [cocktail, ingredient] pairings should be unique.
# There is a :scope option that you can use to specify an attribute  used to limit the uniqueness check:
