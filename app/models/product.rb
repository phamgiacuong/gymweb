class Product < ActiveRecord::Base
  has_many :order_items

  default_scope { where(active: true) }
  def self.search(search)
    if search
          where('name LIKE ?',"%#{search}%")
    else
          all
    end
  end
end
