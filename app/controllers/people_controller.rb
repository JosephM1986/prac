class PeopleController < ApplicationController

  def index
  @people = Person.search(params[:search])
    end

  def list

  end

  private
  def people_param
    params.require(:person).permit(:search, :first_name, :last_name)
  end
end
