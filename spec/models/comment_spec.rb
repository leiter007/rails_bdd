require 'rails_helper'

RSpec.describe Comment, type: :model do
  describe 'DB table' do
    it { is_expected.to have_db_column :id }
    it { is_expected.to have_db_column :commenter }
    it { is_expected.to have_db_column :body }
    it { is_expected.to have_db_column :email }
  end

  describe 'Validations' do
    it { is_expected.to validate_presence_of :commenter }
    it { is_expected.to validate_presence_of :body }
    it { is_expected.to allow_value("").for(:email) }
    it { is_expected.not_to allow_value("felix").for(:email) }
    it { is_expected.not_to allow_value("felix@gmail").for(:email) }
    it { is_expected.not_to allow_value("felix space@gmail.com").for(:email) }
  end

  describe 'Factory' do
    it 'should have valid Factory' do
        expect(FactoryBot.create(:article)).to be_valid
    end
  end
end