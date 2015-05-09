class Page < ActiveRecord::Base
  scope :visible, -> { where(visible: true) }
  scope :button_ordered, -> { order(:button_order) }

  def to_param
    name_key
  end
end
