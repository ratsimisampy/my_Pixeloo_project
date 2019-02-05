require 'rails_helper'

RSpec.describe Item, type: :model do
  describe 'Model instantiation' do
    subject(:new_item) { described_class.new }

    describe 'Database' do
      it { is_expected.to have_db_column(:id).of_type(:integer) }
      it { is_expected.to have_db_column(:name).of_type(:string).with_options(uniqness: true) }
      it { is_expected.to have_db_column(:description).of_type(:text) }
      it { is_expected.to have_db_column(:price).of_type(:decimal).with_options(default: 0,0) }
      it { is_expected.to have_db_column(:created_at).of_type(:datetime).with_options(null: false) }
      it { is_expected.to have_db_column(:updated_at).of_type(:datetime).with_options(null: false) }
end
