# == Schema Information
#
# Table name: tacos
#
#  id         :integer          not null, primary key
#  meat       :integer
#  notes      :text
#  rice       :boolean
#  salsa      :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :taco do
    meat 1
    notes 'hot'
    rice false
    salsa false
  end
end
