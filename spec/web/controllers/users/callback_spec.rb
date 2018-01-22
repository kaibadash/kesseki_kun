# frozen_string_literal: true

require_relative "../../../spec_helper"

describe Web::Controllers::Users::Callback do
  let(:action) { Web::Controllers::Users::Callback.new }
  let(:params) { Hash[] }

  it "is successful" do
    response = action.call(params)
    response[0].must_equal 200
  end
end
