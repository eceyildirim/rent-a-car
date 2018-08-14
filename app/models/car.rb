class Car < ApplicationRecord

has_one :car_detail


after_initialize do 
	self.build_car_detail if self.car_detail.nil?
end
	


	validates :make, :model,
	length: {in: 2..50,
		too_short: "İçin en azından %{count} karakter girmelisiniz.",
		too_long: "İçin en fazla %{count} karakter girebilirsiniz."
	}
	validates :vin,
	uniqueness: {case_sensitive: false},
	presence: true
	validates :year,
	numericality: {
		only_integer: true,
		greater_than: 1990,
		less_than_or_equal_to: Time.now.year
	}
	validates :doors_count,
	numericality: {
		only_integer: true,
		odd: true
	}

	validates :rented,
	inclusion:{in: [true,false]}



end
