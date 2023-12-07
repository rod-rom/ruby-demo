require 'rails_helper'

RSpec.describe Item, type: :model do
  let(:item) { Item.create(name: "Test Item") }

  describe '#soft_delete' do
    it 'marks the item as deleted' do
      item.soft_delete
      expect(item.deleted_at).not_to be_nil
    end
  end

  describe '#restore' do
    it 'restores a soft deleted item' do
      item.soft_delete
      item.restore
      expect(item.deleted_at).to be_nil
    end
  end

  describe 'default scope' do
    it 'excludes soft deleted items from normal queries' do
      item.soft_delete
      expect(Item.all).not_to include(item)
    end

    it 'includes non-deleted items in normal queries' do
      expect(Item.all).to include(item)
    end
  end
end
