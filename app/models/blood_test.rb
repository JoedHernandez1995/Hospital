class BloodTest < ActiveRecord::Base
  belongs_to :patient
  belongs_to :microbiologist
end
