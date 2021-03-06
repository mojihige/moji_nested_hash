# frozen_string_literal: true

require 'spec_helper'

RSpec.describe Hash do
  let(:nest_hashes) do
    { nest1: { nest2: { name: 'name_v', age: 20, sex: 'male' },
               nest3: { prefecture: 'tokyo', city: 'Shinjuku' } } }
  end

  describe '#nested_key?' do
    context 'only_hash' do
      it 'is returns false if the key no matches' do
        expect(nest_hashes.nested_key?(:nest4)).to be_falsey
      end

      it 'is returns true if the key matches' do
        expect(nest_hashes.nested_key?(:nest3)).to be_truthy
        expect(nest_hashes.nested_key?(:sex)).to be_truthy
        expect(nest_hashes.nested_key?(:city)).to be_truthy
      end
    end

    context 'no_hash' do
      let(:nest_no_hashes) do
        { nest1: ['nest2', [%w[name name_v], ['age', 20], %w[sex male]],
                  ['nest3', %w[prefecture tokyo], %w[city Shinjuku]]] }
      end
      it 'is returns false if the key matches' do
        expect(nest_no_hashes.nested_key?('nest3')).to be_falsey
        expect(nest_no_hashes.nested_key?('sex')).to be_falsey
        expect(nest_no_hashes.nested_key?('city')).to be_falsey
      end
    end
  end

  describe '#nested_keys' do
    it 'size is 8' do
      expect(nest_hashes.nested_keys.size).to eq 8
    end

    it 'is returns true if the key matches' do
      expect(nest_hashes.nested_key?(:nest3)).to be_truthy
      expect(nest_hashes.nested_key?(:sex)).to be_truthy
      expect(nest_hashes.nested_key?(:city)).to be_truthy
    end
  end
end
