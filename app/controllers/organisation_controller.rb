# frozen_string_literal: true

class OrganisationController < ApplicationController
  def list; end

  def show; end

  def new; end

  def create
    @people = Person.find(params[:person_id])
    @organisation = @people.organisation.create(organisation_params)
    redirect_to people_path(@people)
  end

  private

  def organisation_params
    params.require(:organisation).permit(:title, :location)
  end
end
