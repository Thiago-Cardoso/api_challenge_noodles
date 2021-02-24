require 'rails_helper'

RSpec.describe 'Api::V1::Informations', type: :request do
  headers = { 'ACCEPT' => 'application/json' }
      describe 'POST /api/v1/informations/calculate_noodles' do
        context '#calculate_noodles' do
          context 'return 200 OK response' do
            before do
              post '/api/v1/informations/calculate_noodles',
                  params: {
                    time_cook: 3,
                    time_hourglass_one: 5,
                    time_hourglass_two: 7
                  },
                  headers: headers
            end
            it 'When send params correct' do
              expect(response).to have_http_status(200)
            end

          end

          context 'return 422 unprocessable_entity response' do
            it 'When invalid params' do
              post '/api/v1/informations/calculate_noodles',
                  params: {},
                  headers: headers

              expect(response).to have_http_status(:unprocessable_entity)
             end
          end
        end
    end
end