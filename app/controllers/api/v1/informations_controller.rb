module Api
   module V1
       class InformationsController < Api::V1::ApiController
         def calculate_noodles
           if !params[:time_cook].nil? && !params[:time_hourglass_one].nil? && !params[:time_hourglass_two].nil?
             result = InformationService.new(params[:time_cook], params[:time_hourglass_one], params[:time_hourglass_two]).call
             render json: result
           else
             not_found
           end
           rescue StandardError => e
             render json: { errors: 'Error not passed some parameters correct' }, status: :unprocessable_entity
           end
         end
    end
end