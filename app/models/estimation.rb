class Estimation < ApplicationRecord
  validates :full_name, presence: true
  validates :phone, presence: true
  validates :email, presence: true, format: { with: /\A[^@\s]+@[^@\s]+\z/ }
  validates :address, presence: true
  validates :type_estimation, presence: true, inclusion: { in: ["Dans les 3 prochains mois", "Dans les 6 prochains mois", "Dans les 12 prochains mois", "J'aimerais seulement avoir mon estimation"] }

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
