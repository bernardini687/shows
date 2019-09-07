require 'rails_helper'

describe Show do
  it 'has a valid factory' do
    expect(build(:show).save).to be_truthy
  end

  it 'fails without a name' do
    expect(build(:show, name: nil).save).to be_falsey
  end

  it 'fails with a blank name' do
    expect(build(:show, name: "\t").save).to be_falsey
  end
end
