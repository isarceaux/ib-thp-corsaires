class Corsaire < ApplicationRecord
  validates :first_name, presence: true, length: { maximum: 120 }
  validates :age, presence: true, inclusion: { in: 15...120 }
  validates :slack_handle, format: { without: /\s/ }
  validates :github_handle, format: { without: /\s/ }
end
