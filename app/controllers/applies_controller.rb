class AppliesController < ApplicationController
  before_action :set_apply, only: [:show, :edit, :update, :destroy]

  # GET /applies
  # GET /applies.json
  def index
    @applies = Apply.all
  end

  # GET /applies/1
  # GET /applies/1.json
  def show
  end

  # GET /applies/new
  def new
    @apply = Apply.new
  end

  # GET /applies/1/edit
  def edit
  end

  # POST /applies
  # POST /applies.json
  def create
    @apply = Apply.new(apply_params)

    respond_to do |format|
      if @apply.save
        format.html { redirect_to @apply, notice: 'Apply was successfully created.' }
        format.json { render action: 'show', status: :created, location: @apply }
      else
        format.html { render action: 'new' }
        format.json { render json: @apply.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /applies/1
  # PATCH/PUT /applies/1.json
  def update
    respond_to do |format|
      if @apply.update(apply_params)
        format.html { redirect_to @apply, notice: 'Apply was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @apply.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /applies/1
  # DELETE /applies/1.json
  def destroy
    @apply.destroy
    respond_to do |format|
      format.html { redirect_to applies_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_apply
      @apply = Apply.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def apply_params
      params.require(:apply).permit(:applyNumber, :phoneApplyDate, :internetApplyDate, :iptvApplyDate, :nameOrFIO, :street, :house, :building, :apartmentOrOffice, :floor, :entrance, :phoneApplyStatus, :internetApplyStatus, :iptvApplyStatus, :applyTreatedBy, :plannedPhoneInstallDate, :plannedInternetInstallDate, :phoneComments, :internetComments, :phoneContractNumber, :phoneContractDate, :phonePorts, :phoneContractConcludedBy, :phonePaymentDate, :phoneDocsPassDate, :phoneInstallDate, :internetContractNumber, :internetContractDate, :internetPorts, :internetContractConcludedBy, :internetPaymentDate, :internetDocsPassDate, :internetInstallDate, :iptvContractNumber, :iptvContractDate, :iptvPorts, :iptvContractConcludedBy, :iptvPaymentDate, :iptvInstallDate, :setToBox, :clientType_id, :insertionDate)
    end
end
