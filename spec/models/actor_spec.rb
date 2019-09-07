require 'rails_helper'

describe Actor do
  it 'has a valid factory' do
    expect(build(:actor).save).to be_truthy
  end

  it 'can be without a last name' do
    expect(build(:actor, last_name: nil).save).to be_truthy
  end

  it 'fails without a first name' do
    expect(build(:actor, first_name: nil).save).to be_falsey
  end

  it 'fails with a blank first_name' do
    expect(build(:actor, first_name: "\t").save).to be_falsey
  end

  it 'fails with a blank last_name' do
    expect(build(:actor, last_name: "\n").save).to be_falsey
  end

  describe '#full_name' do
    it 'returns the full name of the actor' do
      actor = create :actor

      expect(actor.full_name).to eq(
        "#{actor.first_name} #{actor.last_name}"
      )
    end

    it 'returns the first name when the last name is missing' do
      actor = create :actor, last_name: nil

      expect(actor.full_name).to eq actor.first_name
    end
  end
end
