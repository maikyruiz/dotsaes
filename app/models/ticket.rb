class Ticket < ActiveRecord::Base

	belongs_to :card
	validates :concept, presence: true, length: {minimum: 3}
	validates :entsal , presence: true
	validates :amount , presence: true
end
