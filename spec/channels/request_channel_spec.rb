require 'rails_helper'

RSpec.describe RequestChannel, type: :channel do
  describe 'subsciption' do
    it "successfully subscribes" do

      subscribe stream_from: "request_channel"
      byebug

      expect(subscription).to be_confirmed
    end
  end
  
  it "successfully connects" do
  #   connect "/requests", headers: { "request.id": "1" }
  #   expect(connection.request_id).to eq "1"
  # assert_has_stream "request_channel"
  # expect(subscription).to have_stream_from("request_channel")

  end
end
