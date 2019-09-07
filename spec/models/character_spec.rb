require 'rails_helper'

describe Character do
  it 'has a valid factory' do
    expect(build(:character).save).to be_truthy
  end

  it 'can be without a last name' do
    expect(build(:character, last_name: nil).save).to be_truthy
  end

  it 'fails without a first name' do
    expect(build(:character, first_name: nil).save).to be_falsey
  end

  it 'fails with a blank first_name' do
    expect(build(:character, first_name: "\t").save).to be_falsey
  end

  it 'fails with a blank last_name' do
    expect(build(:character, last_name: "\n").save).to be_falsey
  end

  it 'fails without a show' do
    expect(build(:character, show: nil).save).to be_falsey
  end

  it 'fails without an actor' do
    expect(build(:character, actor: nil).save).to be_falsey
  end

  describe '#full_name' do
    it 'returns the full name of the character' do
      character = create :character

      expect(character.full_name).to eq(
        "#{character.first_name} #{character.last_name}"
      )
    end

    it 'returns the first name when the last name is missing' do
      character = create :character, last_name: nil

      expect(character.full_name).to eq character.first_name
    end
  end
end
