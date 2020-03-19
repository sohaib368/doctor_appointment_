# frozen_string_literal: true

class Appointment < ApplicationRecordbelongs_to :doctor
  belongs_to :doctor
  belongs_to :patient
end
