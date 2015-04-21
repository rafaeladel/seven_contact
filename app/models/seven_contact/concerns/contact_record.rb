module SevenContact::Concerns::ContactRecord
  extend ActiveSupport::Concern
  self.included do
    validates :email, presence: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }
    validates :content, presence: true
  end

end