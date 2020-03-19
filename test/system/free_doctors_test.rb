# frozen_string_literal: true

require 'application_system_test_case'

class FreeDoctorsTest < ApplicationSystemTestCase
  setup do
    @free_doctor = free_doctors(:one)
  end

  test 'visiting the index' do
    visit free_doctors_url
    assert_selector 'h1', text: 'Free Doctors'
  end

  test 'creating a Free doctor' do
    visit free_doctors_url
    click_on 'New Free Doctor'

    click_on 'Create Free doctor'

    assert_text 'Free doctor was successfully created'
    click_on 'Back'
  end

  test 'updating a Free doctor' do
    visit free_doctors_url
    click_on 'Edit', match: :first

    click_on 'Update Free doctor'

    assert_text 'Free doctor was successfully updated'
    click_on 'Back'
  end

  test 'destroying a Free doctor' do
    visit free_doctors_url
    page.accept_confirm do
      click_on 'Destroy', match: :first
    end

    assert_text 'Free doctor was successfully destroyed'
  end
end
