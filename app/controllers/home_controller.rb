class HomeController < ApplicationController
  
  def index
  end

  def contact_us

  end

  def about_us

  end

  def join_pahal
  end

  def booking
    @agencies = GasCompany.all
  end

  def gas_distributors
    @agency = GasCompany.find(params[:id])
    @distributor = Distributor.find_by(:id => current_user.distributor.id)
  end

  def book_your_cylinder
    @distributor = Distributor.find_by(:id => current_user.distributor.id)
  end

  def quick_service
  end

  def buy_five_kg_cylinder
  end

end
