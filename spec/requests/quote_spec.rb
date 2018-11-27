require 'rails_helper'

RSpec.describe 'Quotes API', type: :request do
  let!(:quotes) { create_list(:quote, 10) }
  let(:quote_id) { quote.first.id }

  describe 'GET /quotes' do
    before { get '/quotes' }

    it 'returns quotes' do
      expect(json).not_to be_empty
      expect(json.size).to eq(10)
    end

    it 'returns status code 200' do
       expect(response).to have_http_status(200)
    end
  end
end