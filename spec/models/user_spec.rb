# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Model instantiation' do
    subject(:new_user) { described_class.new }

    describe 'Database' do
      it { is_expected.to have_db_column(:id).of_type(:integer) }
      it { is_expected.to have_db_column(:email).of_type(:string).with_options(unique: true, null: false, default: "") }
      it { is_expected.to have_db_column(:encrypted_password).of_type(:string).with_options(null: false, default: "") }
      it { is_expected.to have_db_column(:username).of_type(:string).with_options(unique: true, null: false, default: "" ) }
      it { is_expected.to have_db_column(:created_at).of_type(:datetime).with_options(null: false) }
      it { is_expected.to have_db_column(:updated_at).of_type(:datetime).with_options(null: false) }
  end

  describe 'Validations' do
    subject(:user) { create(:user) }

    context 'when factory is valid' do
      it { expect{ user }.to change(described_class, :count).by(1) }
      it { is_expected.to be_valid }
    end

    context 'when a new user is created' do
      subject(:user) { create(:user) }

      it { is_expected.to validate_presence_of(:username) }
      it { is_expected.to validate_uniqueness_of(:username).with_options(case_sensitive: false) }
      it { is_expected.to allow_value(/\A[a-zA-Z0-9 _\.]*\z/).for(:username) }
    end
  end
end 
