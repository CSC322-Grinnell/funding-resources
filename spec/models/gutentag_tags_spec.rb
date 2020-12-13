require 'rails_helper'

RSpec.describe Gutentag::Tag, type: :model do
    
    describe '#name' do
        it 'returns a name of the tag' do
            tag1 = Gutentag::Tag.create(name: 'tag1')
            expect(tag1.name).to eq('tag1')
        end
    end
    
    describe '#[name]' do
        it 'returns a unique index for the name' do
            tag1 = Gutentag::Tag.create(name: 'mytag')
            tag2 = Gutentag::Tag.create(name: 'mytag')
            expect(tag1['mytag'] == tag2['mytag']).to eq(true)
        end
    end
    
    # describe '#taggings_count' do
    #     it 'returns the number of tags' do
    #         tag1 = Gutentag::Tag.create(name: 'tag1')
    #         taggable1 = Resource.create(title: 'src1')
    #         taggable2 = Resource.create(title: 'src2')
    #         tagging1 = Gutentag::Tagging.create(tag_id: tag1.id, taggable_id: taggable1.id)
    #         tagging2 = Gutentag::Tagging.create(tag_id: tag1.id, taggable_id: taggable2.id)
    #         expect(tag1.taggings_count).to eq(2)
    #     end
    # end
    
    describe '#taggable_id' do
        it 'returns the id of the source' do
            tag = Gutentag::Tag.create(name: 'tag')
            taggable = Resource.create(title: 'src')
            tagging = Gutentag::Tagging.create(tag_id: tag.id, taggable_id: taggable.id)
            expect(tagging.taggable_id).to eq(taggable.id)
        end
    end
    
    describe '#tag_id' do
        it 'returns the id of the tag' do
            tag = Gutentag::Tag.create(name: 'tag')
            taggable = Resource.create(title: 'src')
            tagging = Gutentag::Tagging.create(tag_id: tag.id, taggable_id: taggable.id)
            expect(tagging.tag_id).to eq(tag.id)
        end
    end
end
