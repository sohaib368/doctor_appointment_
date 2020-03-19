# frozen_string_literal: true

json.array! @free_doctors, partial: 'free_doctors/free_doctor', as: :free_doctor
