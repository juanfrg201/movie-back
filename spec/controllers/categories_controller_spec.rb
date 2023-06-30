require 'rails_helper'

RSpec.describe CategoriesController, type: :controller do

  let(:movies) do 
    [
      attributes_for(:movie, name: "Pelicula 1", year: "2000"),
      attributes_for(:movie, name: "Pelicula 2", year: "2000")
    ]
  end

  

  let(:valid_attributes) do
    {
      name: "Terror",
      description: "Terror Descripcion",
      movies_attributes: movies
    } 
  end

  let(:invalid_attributes) do
    {
      name: nil,
      description: "Terror Descripcion"
    } 
  end

  describe "GET #index" do 
    it "returns a succes response" do
      category = Category.create! valid_attributes
      get :index, params: {}
      expect(response).to be_successful
    end
  end
  describe "POST #create" do 
    context "with valid params" do
      it "creates a new category" do
        expect {
          post :create, params: { category: valid_attributes }
        }.to change(Category, :count).by(1)
      end

      it "creates a new category increment movie" do
        expect {
          post :create, params: { category: valid_attributes }
        }.to change(Movie, :count).by(2)
      end
  
      it "renders a JSON response with the new category" do
        post :create, params: { category: valid_attributes }
        expect(response).to have_http_status(:created)
      end
    end
  
    context "with invalid params" do
      it "does not create a new category" do
        expect {
          post :create, params: { category: invalid_attributes }
        }.to change(Category, :count).by(0)
      end
  
      it "renders a JSON response with errors for the new category" do
        post :create, params: { category: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      category = Category.create!(valid_attributes)
      get :show, params: { id: category.to_param }
      expect(response).to be_successful
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested category" do
      category = Category.create!(valid_attributes)
      expect {
        delete :destroy, params: { id: category.to_param }
      }.to change(Category, :count).by(-1)
    end
  
    it "redirects to the categories list" do
      category = Category.create!(valid_attributes)
      delete :destroy, params: { id: category.to_param }
      expect(response).to be_successful
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) do
        {
          name: "Suspense",
          description: "Suspense Descripcion"
        }
      end
  
      it "updates the requested category" do
        category = Category.create!(valid_attributes)
        put :update, params: { id: category.to_param, category: new_attributes }
        category.reload
        expect(response).to have_http_status(:ok)
      end
  
      it "renders a JSON response with the category" do
        category = Category.create!(valid_attributes)
        put :update, params: { id: category.to_param, category: new_attributes }
        expect(response).to have_http_status(:ok)

      end
    end
  
    context "with invalid params" do
      it "renders a JSON response with errors for the category" do
        category = Category.create!(valid_attributes)
        put :update, params: { id: category.to_param, category: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      
      end
    end
  end
  
end