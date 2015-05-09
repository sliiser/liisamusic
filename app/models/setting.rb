class Setting < ActiveRecord::Base
  validates :name_key, uniqueness: true

  def self.value(name_key)
    s = self.find_or_create_by(name_key: name_key)
    s.value
  end
end
