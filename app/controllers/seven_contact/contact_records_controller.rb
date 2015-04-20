require_dependency "seven_contact/application_controller"

module SevenContact
  class ContactRecordsController < ApplicationController
    before_action :set_contact_record, only: [:show, :edit, :update, :destroy]

    # GET /contact_records
    def index
      @contact_records = ContactRecord.all
    end

    # GET /contact_records/1
    def show
    end

    # GET /contact_records/new
    def new
      @contact_record = ContactRecord.new
    end

    # GET /contact_records/1/edit
    def edit
    end

    # POST /contact_records
    def create
      @contact_record = ContactRecord.new(contact_record_params)

      if @contact_record.save
        redirect_to @contact_record, notice: 'Contact record was successfully created.'
      else
        render :new
      end
    end

    # PATCH/PUT /contact_records/1
    def update
      if @contact_record.update(contact_record_params)
        redirect_to @contact_record, notice: 'Contact record was successfully updated.'
      else
        render :edit
      end
    end

    # DELETE /contact_records/1
    def destroy
      @contact_record.destroy
      redirect_to contact_records_url, notice: 'Contact record was successfully destroyed.'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_contact_record
        @contact_record = ContactRecord.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def contact_record_params
        params[:contact_record]
      end
  end
end
