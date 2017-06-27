require 'rails_helper'

RSpec.describe 'Tacos API', type: :request do
  let!(:tacos) { create_list(:taco, 10) }

  describe 'GET /tacos' do
    before { get '/tacos' }

    it 'returns tacos' do
      expect(json).not_to be_empty
      expect(json.size).to eq(10)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

  describe 'POST /tacos' do
    let(:valid_attributes) { { taco: { meat: 'chicken', rice: true, notes: 'faster' } } }

    context 'when the request is valid' do
      before { post '/tacos', params: valid_attributes }

      it 'creates a taco' do
        expect(json['meat']).to eq('chicken')
      end

      it 'returns status code 201' do
        expect(response).to have_http_status(201)
      end
    end

    context 'when the request is invalid' do
      before { post '/tacos', params: { taco: { meat: 'pork' } } }

      it 'returns status code 422' do
        expect(response).to have_http_status(422)
      end

      it 'returns a validation failure message' do
        expect(response.body).to match(/'pork' is not a valid meat/)
      end
    end
  end

  describe 'DELETE /tacos/:id' do
    before { delete "/tacos/#{create(:taco).id}" }

    it 'returns status code 204' do
      expect(response).to have_http_status(204)
    end
  end
end
