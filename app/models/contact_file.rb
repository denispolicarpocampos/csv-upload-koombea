class ContactFile < ApplicationRecord
  has_one_attached :file

  validates :column_name, :column_birthday, :column_phone, :column_address, :column_credit_card,
            :column_franchise, :column_email, presence: true

  validates :file, attached: true, content_type: { in: 'text/csv', message: 'is not a CSV' }
end
