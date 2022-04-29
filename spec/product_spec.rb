require_relative '../models/product'

describe 'Product', :product do
  describe '#name' do
    it 'should return the name of the product' do
      product = Product.new({ name: 'Green Tea' })
      expect(product.name).to eq('Green Tea')
    end
  end

  describe '#price' do
    it 'should return the price of the product' do
      product = Product.new({ price: 3.11 })
      expect(product.price).to eq(3.11)
    end
  end

  describe '#code' do
    it 'should return the code of the product' do
      product = Product.new({ code: 'GR1' })
      expect(product.code).to eq('GR1')
    end
  end
end
