# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Product, type: :model do
  let(:subject) { Product.build }

  # validations
  describe 'when product is created with not title' do
    before do
      subject.valid?
    end

    it 'shows  errors' do
      expect(subject.errors.size).to eq 3
    end

    it 'includes empty title error' do
      expect(subject.errors.first.attribute).to eq :title
    end

    it 'includes empty description error' do
      expect(subject.errors[1].attribute).to eq :description
    end

    it 'includes empty price error' do
      expect(subject.errors.last.attribute).to eq :price
    end
  end
end
