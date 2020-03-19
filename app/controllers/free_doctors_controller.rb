# frozen_string_literal: true

class FreeDoctorsController < ApplicationController
  before_action :set_free_doctor, only: %i[show edit update destroy]

  # GET /free_doctors
  # GET /free_doctors.json
  def index
    @free_doctors = Doctor.where.not(Appointment.all)
  end

  # GET /free_doctors/1
  # GET /free_doctors/1.json
  def show; end

  # GET /free_doctors/new
  def new
    @free_doctor = FreeDoctor.new
  end

  # GET /free_doctors/1/edit
  def edit; end

  # POST /free_doctors
  # POST /free_doctors.json
  def create
    @free_doctor = FreeDoctor.new(free_doctor_params)

    respond_to do |format|
      if @free_doctor.save
        format.html { redirect_to @free_doctor, notice: 'Free doctor was successfully created.' }
        format.json { render :show, status: :created, location: @free_doctor }
      else
        format.html { render :new }
        format.json { render json: @free_doctor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /free_doctors/1
  # PATCH/PUT /free_doctors/1.json
  def update
    respond_to do |format|
      if @free_doctor.update(free_doctor_params)
        format.html { redirect_to @free_doctor, notice: 'Free doctor was successfully updated.' }
        format.json { render :show, status: :ok, location: @free_doctor }
      else
        format.html { render :edit }
        format.json { render json: @free_doctor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /free_doctors/1
  # DELETE /free_doctors/1.json
  def destroy
    @free_doctor.destroy
    respond_to do |format|
      format.html { redirect_to free_doctors_url, notice: 'Free doctor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_free_doctor
    @free_doctor = FreeDoctor.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def free_doctor_params
    params.fetch(:free_doctor, {})
  end
end
