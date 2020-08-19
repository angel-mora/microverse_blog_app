class Comment < ApplicationRecord
  belongs_to :article, dependent: :destroy
end
