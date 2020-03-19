# frozen_string_literal: true

class CreateFreeDoctors < ActiveRecord::Migration[6.0]
  def change
    create_table :free_doctors, &:timestamps
  end
end
