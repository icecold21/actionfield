require 'rails_helper'

RSpec.describe ScoobyDoo, type: :model do
  describe 'ActionField' do
    context 'test action field' do
      it 'called the right method on field' do
        scooby_doo = ScoobyDoo.new(name: "ABC")
      end
    end
  end
end
