# frozen_string_literal: true

require_relative "../../../spec_helper"

describe Web::Views::Events::Index do
  let(:exposures) { Hash[foo: "bar"] }
  let(:template)  { Hanami::View::Template.new("apps/web/templates/events/index.html.erb") }
  let(:view)      { Web::Views::Events::Index.new(template, exposures) }
  let(:rendered)  { view.render }

  it "exposes #foo" do
    skip "This is an auto-generated test. Edit it and add your own tests."

    # Example
    view.foo.must_equal exposures.fetch(:foo)
  end
end
