require 'spec_helper'

describe User do
  it 'should be a valid user' do
    Factory.build(:user).should be_valid
  end

  describe 'validatons' do
    it 'should require email'
    it 'should require name'
    it 'should have a valid email'
  end

  it 'should set name if one is not provided'
end
