class Booking < ApplicationRecord
    validates :no_ppl, presence: true
  validates :name, presence: true
  validates :phone_no, presence: true
  validates :date_time, presence: true
  validates :message, presence: true

  def self.search(term)
    if term
      where('name LIKE ?', "%#{term}%")
    else
      all
    end
  end
end
