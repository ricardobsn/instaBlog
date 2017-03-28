require 'rails_helper'

RSpec.describe PostagemsController, type: :controller do
  describe 'PUT /postagems/:id'  do
    context 'When dont have update' do
      let!(:postagem) do
        {}
      end
      before do
        put postagem_path(id: 1), params: postagem
      end
      it 'Does return status_code: 400' do
        expect(response).to have_http_status(:bad_request)
      end
    end
  end

  describe 'GET /postagems/:id' do
    context 'When dont have update' do
      before do
        get postagem_path(id: 1)
      end
      it 'Does return ExecutionResult with code :not_found' do
        expect(response).to have_http_status(:not_found)
      end
    end
  end

end
