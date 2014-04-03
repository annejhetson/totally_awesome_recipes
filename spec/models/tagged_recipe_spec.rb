require 'spec_helper'

describe Tagged_recipe do
  it { should belong_to(:tag) }
  it { should belong_to(:recipe) }
end
