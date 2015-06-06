class BdaysController < ApplicationController
  
  def new
    @bday = Bday.new
  end

  def create
    @bday = Bday.create(bday_params)
    @bday.save
  end

  private
    # Using a private method to encapsulate the permissible parameters
    # is just a good pattern since you'll be able to reuse the same
    # permit list between create and update. Also, you can specialize
    # this method with per-user checking of permissible attributes.
    def bday_params
      params.require(:bday).permit(:name)
    end

end