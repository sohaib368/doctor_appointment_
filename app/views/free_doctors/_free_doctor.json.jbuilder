# frozen_string_literal: true

json.extract! free_doctor, :id, :created_at, :updated_at
json.url free_doctor_url(free_doctor, format: :json)
