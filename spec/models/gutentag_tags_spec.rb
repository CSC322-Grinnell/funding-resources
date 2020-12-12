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
end
