require 'rails_helper'

describe InformationService do
  describe 'When call service' do
    context '#call' do
        before do
            @time_cook = 3
            @time_hourglass_one = 5
            @time_hourglass_two = 9
        end
      it 'With valid params' do
        info_service = InformationService.new(@time_cook,@time_hourglass_one,@time_hourglass_two).call
        expect(info_service).present?
      end

      it 'With invalid params' do
        expect { InformationService.new.call }.to raise_error(ArgumentError)
      end
    end
  end
end