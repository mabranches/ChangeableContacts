class ContactStructuresController < ApplicationController
  before_action :set_contact_structure, only: [:show, :edit, :update, :destroy]

  # GET /contact_structures
  # GET /contact_structures.json
  def index
    @contact_structures = ContactStructure.all
  end

  # GET /contact_structures/1
  # GET /contact_structures/1.json
  def show
  end

  # GET /contact_structures/new
  def new
    @contact_structure = ContactStructure.new
  end

  # GET /contact_structures/1/edit
  def edit
  end

  # POST /contact_structures
  # POST /contact_structures.json
  def create
    @contact_structure = ContactStructure.new(contact_structure_params)

    respond_to do |format|
      if @contact_structure.save
        format.html { redirect_to @contact_structure, notice: 'Contact structure was successfully created.' }
        format.json { render :show, status: :created, location: @contact_structure }
      else
        format.html { render :new }
        format.json { render json: @contact_structure.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contact_structures/1
  # PATCH/PUT /contact_structures/1.json
  def update
    respond_to do |format|
      if @contact_structure.update(contact_structure_params)
        format.html { redirect_to @contact_structure, notice: 'Contact structure was successfully updated.' }
        format.json { render :show, status: :ok, location: @contact_structure }
      else
        format.html { render :edit }
        format.json { render json: @contact_structure.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contact_structures/1
  # DELETE /contact_structures/1.json
  def destroy
    @contact_structure.destroy
    respond_to do |format|
      format.html { redirect_to contact_structures_url, notice: 'Contact structure was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contact_structure
      @contact_structure = ContactStructure.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contact_structure_params
      params.require(:contact_structure).permit(:user_id, :data_type_id, :name, :extra)
    end
end
