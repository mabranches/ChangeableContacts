require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

RSpec.describe ContactStructuresController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # ContactStructure. As you add validations to ContactStructure, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    {
      user_id: user.id,
      data_type_id: DataType.find_by(name: 'text').id,
      name: 'field',
      extra: nil
    }
  }

  let(:invalid_attributes) {
    {
      user_id: user.id,
      data_type_id: DataType.find_by(name: 'text').id,
      name: nil,
      extra: nil
    }
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ContactStructuresController. Be sure to keep this updated too.
  let(:valid_session) { {user_id: user.id} }


  describe "GET #index" do
    it "assigns all contact_structures as @contact_structures" do
      contact_structure = ContactStructure.create! valid_attributes
      get :index, params: {}, session: valid_session
      expect(assigns(:contact_structures)).to eq([contact_structure])
    end
  end

  describe "GET #show" do
    it "assigns the requested contact_structure as @contact_structure" do
      contact_structure = ContactStructure.create! valid_attributes
      get :show, params: {:id => contact_structure.to_param}, session: valid_session
      expect(assigns(:contact_structure)).to eq(contact_structure)
    end
  end

  describe "GET #new" do
    it "assigns a new contact_structure as @contact_structure" do
      get :new, params: {}, session: valid_session
      expect(assigns(:contact_structure)).to be_a_new(ContactStructure)
    end
  end

  describe "GET #edit" do
    it "assigns the requested contact_structure as @contact_structure" do
      contact_structure = ContactStructure.create! valid_attributes
      get :edit, params: {:id => contact_structure.to_param}, session: valid_session
      expect(assigns(:contact_structure)).to eq(contact_structure)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new ContactStructure" do
        expect {
          post :create, params: {:contact_structure => valid_attributes}, session: valid_session
        }.to change(ContactStructure, :count).by(1)
      end

      it "assigns a newly created contact_structure as @contact_structure" do
        post :create, params: {:contact_structure => valid_attributes}, session: valid_session
        expect(assigns(:contact_structure)).to be_a(ContactStructure)
        expect(assigns(:contact_structure)).to be_persisted
      end

      it "redirects to the created contact_structure" do
        post :create, params: {:contact_structure => valid_attributes}, session: valid_session
        expect(response).to redirect_to(ContactStructure.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved contact_structure as @contact_structure" do
        post :create, params: {:contact_structure => invalid_attributes}, session: valid_session
        expect(assigns(:contact_structure)).to be_a_new(ContactStructure)
      end

      it "re-renders the 'new' template" do
        post :create, params: {:contact_structure => invalid_attributes}, session: valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        {name:'new_name'}
      }

      it "updates the requested contact_structure" do
        contact_structure = ContactStructure.create! valid_attributes
        put :update, {:id => contact_structure.to_param, :contact_structure => new_attributes}, valid_session
        contact_structure.reload
        expect(contact_structure.name).to eq('new_name')
      end

      it "assigns the requested contact_structure as @contact_structure" do
        contact_structure = ContactStructure.create! valid_attributes
        put :update, params: {:id => contact_structure.to_param, :contact_structure => valid_attributes}, session: valid_session
        expect(assigns(:contact_structure)).to eq(contact_structure)
      end

      it "redirects to the contact_structure" do
        contact_structure = ContactStructure.create! valid_attributes
        put :update, params: {:id => contact_structure.to_param, :contact_structure => valid_attributes}, session: valid_session
        expect(response).to redirect_to(contact_structure)
      end
    end

    context "with invalid params" do
      it "assigns the contact_structure as @contact_structure" do
        contact_structure = ContactStructure.create! valid_attributes
        put :update, params: {:id => contact_structure.to_param, :contact_structure => invalid_attributes}, session: valid_session
        expect(assigns(:contact_structure)).to eq(contact_structure)
      end

      it "re-renders the 'edit' template" do
        contact_structure = ContactStructure.create! valid_attributes
        put :update, params: {:id => contact_structure.to_param, :contact_structure => invalid_attributes}, session: valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested contact_structure" do
      contact_structure = ContactStructure.create! valid_attributes
      expect {
        delete :destroy, params: {:id => contact_structure.to_param}, session: valid_session
      }.to change(ContactStructure, :count).by(-1)
    end

    it "redirects to the contact_structures list" do
      contact_structure = ContactStructure.create! valid_attributes
      delete :destroy, params: {:id => contact_structure.to_param}, session: valid_session
      expect(response).to redirect_to(contact_structures_url)
    end
  end

end
