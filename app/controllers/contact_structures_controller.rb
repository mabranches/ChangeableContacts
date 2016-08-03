class ContactStructuresController < ApplicationController
  before_action :set_contact_structure, only: [:show, :edit, :update, :destroy]
  before_action :set_types, only: [:new, :edit, :create]

  def index
    @contact_structures = ContactStructure.all
  end

  def show
  end

  def new
    @contact_structure = ContactStructure.new
  end

  def edit
  end

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

  def destroy
    @contact_structure.destroy
    respond_to do |format|
      format.html { redirect_to contact_structures_url, notice: 'Contact structure was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_contact_structure
      @contact_structure = ContactStructure.find(params[:id])
    end

    def contact_structure_params
      cs_params = params.require(:contact_structure).permit(:user_id, :data_type_id, :name, :extra)
      data_type = DataType.find(cs_params[:data_type_id])
      cs_params[:extra] = cs_params[:extra].split(',')
      cs_params[:user_id] = current_user.id
      cs_params
    end

    def set_types
      @types = DataType.all
    end

end
