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
      it { is_expected.to have_db_column(:reset_password_token).of_type(:string) }
      it { is_expected.to have_db_column(:reset_password_sent_at).of_type(:datetime) }
      it { is_expected.to have_db_column(:remember_created_at).of_type(:datetime) }
      it { is_expected.to have_db_column(:confirmation_token).of_type(:string) }
      it { is_expected.to have_db_column(:confirmed_at).of_type(:datetime) }
      it { is_expected.to have_db_column(:confirmation_sent_at).of_type(:datetime) }
      it { is_expected.to have_db_column(:unconfirmed_email).of_type(:string) }
    end
  end

  describe 'Validations' do
    subject(:user) { create(:user) }

    context 'when factory is valid' do
      it { expect{ user }.to change(described_class, :count).by(1) }
      it { is_expected.to be_valid }
    end

    context 'when a new user is created' do
      it { is_expected.to validate_presence_of(:username) }
    end

    context 'with indexes' do
      it { is_expected.to have_db_index(:username).unique }
    end
  end
end
