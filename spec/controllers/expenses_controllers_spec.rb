require 'rails_helper'

RSpec.describe ExpensesController, type: :controller do
  describe "POST create" do
    it "should create expense" do
      login_user
      expect(Expense.count).to eq 0
      post :create,format: :js, expense: {item_name: "Watch", description: "For birthday gift.", cost: "10", quantity: "1", subtotal: "10", date: "12-12-2017"}
      expect(Expense.count).to eq 1
    end
  end


  describe "GET index" do
    describe "if user logged in" do
      it "assigns @expense" do
        login_user
        get :index
        expect(response).to have_http_status(:success)
      end
    end
  end
end