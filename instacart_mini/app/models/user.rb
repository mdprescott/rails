class User < ApplicationRecord
  has_many :carts

  def full_name
    "#{first_name} #{last_name} - (#{id})"
  end

  def first_last
    "#{first_name} #{last_name}"
  end

end
