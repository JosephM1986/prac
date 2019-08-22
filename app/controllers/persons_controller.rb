class PersonsController < ApplicationController

def index
@person = Person.all
@search = params["search"]
if @search.present?
  @name = @search["name"]
  @person = Person.where(full_name: @name)
    end
  end
end


  def list
    @persons = Person.all
    @organisations = Organisation.all


  end


  def show
    @persons = Person.find(params[:id])
  end

  def new
    @persons = Person.new
  end
  def create
    @persons = Person.new(person_params)

      if @persons.save
        redirect_to :action => 'list'
      else
        render :action => 'new'
      end
  end
  def edit
    @persons = Person.find(params[:id])
  end
  def update
    @persons = Person.find(params[:id])
  end

  def delete
    Person.find(params[:id]).destroy
    redirect_to :action => 'list'
  end

  private
  def person_params
    params.require(:person).permit(:person, :first_name, :last_name, :search)
  end
