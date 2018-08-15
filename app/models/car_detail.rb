class CarDetail < ApplicationRecord
  belongs_to :car

  validates :vin,
  uniqueness: {
  	case_sensitive: false,
  		message: "Benzersiz olmalıdır" }
  	#	presence: {message: "alanı boş bırakılamaz"}

validates :year,
numericality: {only_integer: true},
#inclusion: {in: 1990..Time.now.year},
allow_blank: true

validates :doors_count,
numericality: {
	only_integer: true,
	odd: true}



  	
end
