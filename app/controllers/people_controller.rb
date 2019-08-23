# frozen_string_literal: true

class PeopleController < ApplicationController
  def index
    @people = Person.search(params[:search])

    @people = Person.all
    @organisation = Organisation.all
  end
  # @orginsation = Organisation.search(params[:search])

  def list
    @people = Person.all
  end

  def new; end

  def create
    @people = Person.new(people_params)

    @people.save
    redirect_to @people
  end

  def update; end

  def delete; end

  def show
    @people = Person.find(params[:id])
  end

  private

  def people_params
    params.require(:people).permit(:first_name, :last_name, :search)
  end
end
