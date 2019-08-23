# frozen_string_literal: true

class PeopleController < ApplicationController
  def index
    @people = Person.search(params[:search])

    @people = Person.all
    @organisation = Organisation.all
  end

  # @orginsation = Organisation.search(params[:search])
  def edit
    @people = Person.find(params[:id])
  end

  def list
    @people = Person.all
  end

  def new
    @people = Person.new
  end

  def create
    @people = Person.new(people_params)

    if @people.save
      redirect_to @people
    else
      render 'new'
  end
end

  def update
    @people = Person.find(params[:id])

    if @people.update(people_params)
      redirect_to @people
    else
      render 'edit'
    end
  end

  def show
    @people = Person.find(params[:id])
  end

  def destroy
    @people = Person.find(params[:id])
    @people.destroy

    redirect_to people_path
   end

  private

  def people_params
    params.require(:people).permit(:first_name, :last_name, :assessment_count, :organisation_id, :id, :search)
  end
end
