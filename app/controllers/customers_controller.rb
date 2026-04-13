class CustomersController < ApplicationController
  def index
    @customers = Customer.all.with_attached_image
  end

  def alphabetized
    @customers = Customer.all.with_attached_image.order(full_name: :asc)
  end

  def missing_email
    @customers = Customer.all.with_attached_image.where(email_address: nil)
  end
end
