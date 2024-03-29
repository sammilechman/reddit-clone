# == Schema Information
#
# Table name: subs
#
#  id         :integer          not null, primary key
#  name       :string(255)      not null
#  user_id    :integer          not null
#  created_at :datetime
#  updated_at :datetime
#

# Read about factories at https://github.com/thoughtbot/factory_girl
require 'faker'


FactoryGirl.define do
  factory :sub do
    name {Faker::Internet.domain_word}
    association :admin, { :factory => :user }
  end
end



