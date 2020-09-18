require 'rails_helper'

RSpec.describe User, type: :model do
  describe '#full_name' do
    it 'concats the first name and last name' do
      user = User.new(first_name: 'Daniel', last_name: 'Gomez')
      expect(user.full_name).to eq('Daniel Gomez')
    end
  end
end
