class Order < ApplicationRecord
  before_create :generate_toekn

  def generate_toekn
    self.token = SecureRandom.uuid
  end

  belongs_to :user
  has_many :product_lists

  validates :billing_name, presence: true
  validates :billing_address ,presence: true
  validates :shipping_name, presence: true
  validates :shipping_address, presence: true
end
