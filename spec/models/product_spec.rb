require "rails_helper"

RSpec.describe Product, type: :model do
  it it "is valid with valid attributes" do
      expect(Product.create!(name:"Test_name",
                                description: "test Description",
                                price_cents: 45612)).to.not be_valid
  end
end

RSpec.describe Product, type: :model do
  it "is not valid without a name" do
      product = Product.create!(name: nil,
                                description: "test Description",
                                price_cents: 45612)
  end
end

RSpec.describe Product, type: :model do
  it "is not valid with an empty name" do
      product = Product.create!(name:"",
                                description: "test Description",
                                price_cents: 45612) 
  end
end

RSpec.describe Product, type: :model do
  it "is not valid without a description" do
      product = Product.create!(name:"Test_name",
                                description: nil,
                                price_cents: 456783)
  end
end

RSpec.describe Product, type: :model do
  it "is not valid with an empty description" do
      product = Product.create!(name:"Test_name",
                                description: "",
                                price_cents: 123456)
  end
end

RSpec.describe Product, type: :model do
  it "is not valid with an empty description" do
      product = Product.create!(name:"Test_name",
                                description: "test Description",
                                price_cents: nil)
  end
end

RSpec.describe Product, type: :model do
  it "is not valid without price_cents" do
      product = Product.create!(name:"Test_name",
                                description: "test Description",
                                price_cents: nil)
      expect(price_cents).to be > 0
  end
end

RSpec.describe Product, type: :model do
  it "is not valid with float price_cents" do
      product = Product.create!(name:"Test_name",
                                description: "test Description",
                                price_cents: 13.566)
      expect(price_cents).to be > 0
  end
end

RSpec.describe Product, type: :model do
  it "is not valid with negative price_cents" do
      product = Product.create!(name:"Test_name",
                                description: "test Description",
                                price_cents: -2)
      expect(price_cents).to be > 0
  end
end