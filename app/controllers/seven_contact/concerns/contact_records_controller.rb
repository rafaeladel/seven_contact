module SevenContact::Concerns::ContactRecordsController
  extend ActiveSupport::Concern

  self.included do
    before_action :set_contact_record, only: [:show, :destroy]
  end

  def index
    @contact_records = SevenContact::ContactRecord.all
  end

  # GET /contact_records/1
  def show
  end

  # GET /contact_records/new
  def new
    @contact_record = SevenContact::ContactRecord.new
  end

  # POST /contact_records
  def create
    @contact_record = SevenContact::ContactRecord.new(contact_record_params)

    if @contact_record.save
      SevenContact::ContactMailer.send_mail(@contact_record).deliver_now
      redirect_to @contact_record, notice: 'Contact record was successfully created.'
    else
      render :new
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
    @contact_record = SevenContact::ContactRecord.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def contact_record_params
    params[:contact_record].permit(:email, :name, :content)
  end
end