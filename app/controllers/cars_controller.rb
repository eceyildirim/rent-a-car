class CarsController < ApplicationController
def index
@arabalar = [
{marka: "Opel",model: "corsa", yil: 2010},
{marka: "Fiat", model: "Punto", yil:2018}

]

end

def show
	@car = Car.find_by(params[:id])
	render :not_found unless @car
end

end
