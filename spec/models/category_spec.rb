require 'rails_helper'

RSpec.describe Category, type: :model do
  #In this part we puts the validations of the model
  it { should have_many :movies}

  it { should validate_presence_of(:name) }
  it { should validate_uniqueness_of(:name).case_insensitive } 

  it { should accept_nested_attributes_for(:movies).allow_destroy(true)}
  
end
