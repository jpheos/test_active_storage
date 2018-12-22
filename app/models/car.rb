class Car < ApplicationRecord
  has_one_attached :photo

  after_create :create_variants

  private

  def create_variants
    self.photo.variant(resize: "100x100").processed
  end
end
