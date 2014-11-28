class Product < ActiveRecord::Base
  has_many :tickets
  default_scope -> { order(name: :asc, version: :desc) }

  def name_and_version
    "#{self.name} v#{self.version}"
  end
end
