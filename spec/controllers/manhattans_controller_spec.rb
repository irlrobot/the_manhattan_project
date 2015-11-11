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

RSpec.describe ManhattansController, type: :controller do
  # This should return the minimal set of attributes required to create a valid
  # Manhattan. As you add validations to Manhattan, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) do
    skip('Add a hash of attributes valid for your model')
  end

  let(:invalid_attributes) do
    skip('Add a hash of attributes invalid for your model')
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ManhattansController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe 'GET #index' do
    it 'assigns all manhattans as @manhattans' do
      manhattan = Manhattan.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:manhattans)).to eq([manhattan])
    end
  end

  describe 'GET #show' do
    it 'assigns the requested manhattan as @manhattan' do
      manhattan = Manhattan.create! valid_attributes
      get :show, { id: manhattan.to_param }, valid_session
      expect(assigns(:manhattan)).to eq(manhattan)
    end
  end

  describe 'GET #new' do
    it 'assigns a new manhattan as @manhattan' do
      get :new, {}, valid_session
      expect(assigns(:manhattan)).to be_a_new(Manhattan)
    end
  end

  describe 'GET #edit' do
    it 'assigns the requested manhattan as @manhattan' do
      manhattan = Manhattan.create! valid_attributes
      get :edit, { id: manhattan.to_param }, valid_session
      expect(assigns(:manhattan)).to eq(manhattan)
    end
  end

  describe 'POST #create' do
    context 'with valid params' do
      it 'creates a new Manhattan' do
        expect do
          post :create, { manhattan: valid_attributes }, valid_session
        end.to change(Manhattan, :count).by(1)
      end

      it 'assigns a newly created manhattan as @manhattan' do
        post :create, { manhattan: valid_attributes }, valid_session
        expect(assigns(:manhattan)).to be_a(Manhattan)
        expect(assigns(:manhattan)).to be_persisted
      end

      it 'redirects to the created manhattan' do
        post :create, { manhattan: valid_attributes }, valid_session
        expect(response).to redirect_to(Manhattan.last)
      end
    end

    context 'with invalid params' do
      it 'assigns a newly created but unsaved manhattan as @manhattan' do
        post :create, { manhattan: invalid_attributes }, valid_session
        expect(assigns(:manhattan)).to be_a_new(Manhattan)
      end

      it "re-renders the 'new' template" do
        post :create, { manhattan: invalid_attributes }, valid_session
        expect(response).to render_template('new')
      end
    end
  end

  describe 'PUT #update' do
    context 'with valid params' do
      let(:new_attributes) do
        skip('Add a hash of attributes valid for your model')
      end

      it 'updates the requested manhattan' do
        manhattan = Manhattan.create! valid_attributes
        put :update, { id: manhattan.to_param, manhattan: new_attributes }, valid_session
        manhattan.reload
        skip('Add assertions for updated state')
      end

      it 'assigns the requested manhattan as @manhattan' do
        manhattan = Manhattan.create! valid_attributes
        put :update, { id: manhattan.to_param, manhattan: valid_attributes }, valid_session
        expect(assigns(:manhattan)).to eq(manhattan)
      end

      it 'redirects to the manhattan' do
        manhattan = Manhattan.create! valid_attributes
        put :update, { id: manhattan.to_param, manhattan: valid_attributes }, valid_session
        expect(response).to redirect_to(manhattan)
      end
    end

    context 'with invalid params' do
      it 'assigns the manhattan as @manhattan' do
        manhattan = Manhattan.create! valid_attributes
        put :update, { id: manhattan.to_param, manhattan: invalid_attributes }, valid_session
        expect(assigns(:manhattan)).to eq(manhattan)
      end

      it "re-renders the 'edit' template" do
        manhattan = Manhattan.create! valid_attributes
        put :update, { id: manhattan.to_param, manhattan: invalid_attributes }, valid_session
        expect(response).to render_template('edit')
      end
    end
  end

  describe 'DELETE #destroy' do
    it 'destroys the requested manhattan' do
      manhattan = Manhattan.create! valid_attributes
      expect do
        delete :destroy, { id: manhattan.to_param }, valid_session
      end.to change(Manhattan, :count).by(-1)
    end

    it 'redirects to the manhattans list' do
      manhattan = Manhattan.create! valid_attributes
      delete :destroy, { id: manhattan.to_param }, valid_session
      expect(response).to redirect_to(manhattans_url)
    end
  end
end
