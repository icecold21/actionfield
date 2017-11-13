require "rails_helper"

RSpec.describe ScoobyDoo, type: :model do
  describe "test ActionField" do
    context "test action field" do
      it "called the right method on field" do
        scooby_doo = ScoobyDoo.new(name: "Schooby")
        scooby_doo.save
        expect(scooby_doo.name).to eq "schooby"
      end

      it "called the right method on field" do
        scooby_doo = ScoobyDoo.new(name: "schooby")
        scooby_doo.save
        expect(scooby_doo.name).not_to eq "schoobyy"
      end
    end
  end
end
