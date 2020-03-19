# frozen_string_literal: true

require 'test_helper'

class FreeDoctorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @free_doctor = free_doctors(:one)
  end

  test 'should get index' do
    get free_doctors_url
    assert_response :success
  end

  test 'should get new' do
    get new_free_doctor_url
    assert_response :success
  end

  test 'should create free_doctor' do
    assert_difference('FreeDoctor.count') do
      post free_doctors_url, params: { free_doctor: {} }
    end

    assert_redirected_to free_doctor_url(FreeDoctor.last)
  end

  test 'should show free_doctor' do
    get free_doctor_url(@free_doctor)
    assert_response :success
  end

  test 'should get edit' do
    get edit_free_doctor_url(@free_doctor)
    assert_response :success
  end

  test 'should update free_doctor' do
    patch free_doctor_url(@free_doctor), params: { free_doctor: {} }
    assert_redirected_to free_doctor_url(@free_doctor)
  end

  test 'should destroy free_doctor' do
    assert_difference('FreeDoctor.count', -1) do
      delete free_doctor_url(@free_doctor)
    end

    assert_redirected_to free_doctors_url
  end
end
