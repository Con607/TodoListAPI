require 'rails_helper'

def json
  JSON.parse(response.body)
end

RSpec.describe "Todos", type: :request do

  # describe "GET /todos" do
  #   it "works! (now write some real specs)" do
  #     get todos_path
  #     expect(response).to have_http_status(200)
  #   end
  # end

  # initialize test data
  let!(:todos) { create_list(:todo, 10) }
  let(:todo_id) { todos.first.id }


end
