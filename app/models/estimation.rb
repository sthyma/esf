class Estimation < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :address, presence: true
  validates :type, presence: true, inclusion: { in: ["Vendre dans les 3 prochains mois", "Vendre dans les 6 prochains mois", "Vendre dans les 12 prochains mois", "J'aimerais seulement avoir mon estimation"] }
end
