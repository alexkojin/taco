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

require 'rails_helper'

RSpec.describe Taco, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
