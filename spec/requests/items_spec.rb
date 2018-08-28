require 'rails_helper'

RSpec.describe "Items", type: :request do

  # describe "GET /items" do
  #   it "works! (now write some real specs)" do
  #     get items_path
  #     expect(response).to have_http_status(200)
  #   end
  # end


  # Initialize the test data
  let!(:todo) { create(:todo) }
  let!(:items) { create_list(:item, 20, todo_id: todo.id) }
  let(:todo_id) { todo.id }
  let(:id) { items.first.id }

  
end
