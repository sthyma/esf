class Estimation < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :address, presence: true
  validates :type_estimation, presence: true, inclusion: { in: ["Dans les 3 prochains mois", "Dans les 6 prochains mois", "Dans les 12 prochains mois", "J'aimerais seulement avoir mon estimation"] }

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
