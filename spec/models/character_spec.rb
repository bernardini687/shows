require 'rails_helper'

describe Character do
  it 'has a valid factory' do
    expect(FactoryBot.build(:character).save).to be_truthy
  end

  it 'is valid without a last name' do
    expect(FactoryBot.build(:character, last_name: nil).save).to be_truthy
  end

  it 'is invalid without a first name' do
    expect(FactoryBot.build(:character, first_name: nil).save).to be_falsey
  end

  it 'is invalid with a blank first_name' do
    expect(FactoryBot.build(:character, first_name: '').save).to be_falsey
  end

  it 'is invalid with a blank last_name' do
    expect(FactoryBot.build(:character, last_name: '').save).to be_falsey
  end

  it 'is invalid without a show' do
    expect(FactoryBot.build(:character, show: nil).save).to be_falsey
  end

  it 'is invalid without an actor' do
    expect(FactoryBot.build(:character, actor: nil).save).to be_falsey
  end

  describe '#full_name' do
    it 'returns the full name of the character' do
      character = FactoryBot.build :character
      character.save

      expect(character.full_name).to eq(
        "#{character.first_name} #{character.last_name}"
      )
    end

    it 'returns the first name of the character when last name is missing' do
      character = FactoryBot.build :character, last_name: nil
      character.save

      expect(character.full_name).to eq character.first_name
    end
  end
end
