# frozen_string_literal: true

require_relative "../../../spec_helper"

describe Web::Views::Events::Show do
  let(:exposures) { Hash[foo: "bar"] }
  let(:template)  { Hanami::View::Template.new("apps/web/templates/events/show.html.erb") }
  let(:view)      { Web::Views::Events::Show.new(template, exposures) }
  let(:rendered)  { view.render }

  it "exposes #foo" do
    skip "This is an auto-generated test. Edit it and add your own tests."

    # Example
    view.foo.must_equal exposures.fetch(:foo)
  end
end
