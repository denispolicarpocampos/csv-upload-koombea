class ContactFile < ApplicationRecord
  has_one_attached :file

  validates :file, attached: true, content_type: { in: 'text/csv', message: 'is not a CSV' }
end
