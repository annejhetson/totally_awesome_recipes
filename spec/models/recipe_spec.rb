require 'spec_helper'

describe Recipe do
  it { should validate_presence_of :name }
  it { should validate_uniqueness_of :description }
  it { should have_many(:tags).through :tagged_recipes }
end
