require "rails_helper"

RSpec.describe Client, type: :model do
  it "is valid with valid attributes" do
      client = Client.create!(name: "test",
                              email: "test@test.com",
                              birthdate: today
      expect(client.valid).not_to be falsey
  end
end

RSpec.describe Client, type: :model do
  it "is not valid without a name" do
      client = Client.create!(name: nil,
                              email: "test@test.com",
                              birthdate: 2014-12-01 )
  end
end

RSpec.describe Client, type: :model do
  it "is not valid with an empty name" do
      client = Client.create!(name: "",
                              email: "test@test.com",
                              birthdate: 2014-12-01)
  end
end

RSpec.describe Client, type: :model do
  it "is not valid with an empty email" do
      client = Client.create!(name: "test_name",
                              email: "",
                              birthdate: 2014-12-01)
  end
end

RSpec.describe Client, type: :model do
  it "is not valid with an empty birthdate" do
      client = Client.create!(name: "test_name",
                              email: "test@test.com",
                              birthdate: "")
  end
end

RSpec.describe Client, type: :model do
  it "is not valid with an empty name" do
      client = Client.create!(name: "",
                              email: "test@test.com",
                              birthdate: 2014-12-01)
  end
end
