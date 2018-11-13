require "rails_helper"

RSpec.describe Product, type: :model do
  context "validation tests" do
    it "ensures title is present" do
      product = Product.new(description: "some text description test content")
      except(product.valid?).to eq(false)
    end

    it "ensures description is present" do
      product = Product.new(title: "Title test content")
      except(product.valid?).to eq(false)
    end

    it "ensures price is present" do
      product = Product.new(price: 15252)
      except(product.valid?).to eq(false)
    end

    it "should be able save product" do
      product = Product.new(title: "Title test content", description: "some text description test content", price: 15252)
      except(product.save).to eq(true)
    end

  end

  context "scope tests" do

  end
end
