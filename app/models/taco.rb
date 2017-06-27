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

class Taco < ApplicationRecord
  enum meat: [:chicken, :steak]
  # validation is not needed because enum raise ArgumentError exception
  # that catched in ExceptionHandler concern
end
